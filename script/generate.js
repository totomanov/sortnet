const fs = require("fs");

const SORTING_NETWORKS_DIR = "lib/SorterHunter/Networks/Sorters/";
const MEDIAN_NETWORKS_DIR = "lib/SorterHunter/Networks/Median/";
const SIZE_LIMIT = 32;

function getNetworksPaths(dir) {
    // JSON file names e.g. "Sort_10_31_7.json"
    const allNetworkFiles = fs.readdirSync(dir);

    // For some sizes there are duplicates. We choose the network with lower operation count.
    const filenames = Object.values(
        allNetworkFiles.reduce((networkFilenameBySize, filename) => {
            // Exclude README and networks over the size limit.
            if (!filename.endsWith(".json")) return networkFilenameBySize;
            const { size, operations } = parseFileName(filename);
            if (size > SIZE_LIMIT) return networkFilenameBySize;

            if (networkFilenameBySize[size]) {
                const { operations: $operations } = parseFileName(networkFilenameBySize[size]);
                if (operations < $operations) networkFilenameBySize[size] = filename;
            } else {
                networkFilenameBySize[size] = filename
            }
            return networkFilenameBySize
        }, {})
    );

    return filenames.map((filename) => `${dir}${filename}`);

}

function generateSortingNetworks() {
    const sortingNetworksPaths = getNetworksPaths(SORTING_NETWORKS_DIR)
    const medianNetworksPaths = getNetworksPaths(MEDIAN_NETWORKS_DIR)

    const sortingNetworkFunctions = sortingNetworksPaths.map(generateSortingFunction).join('');
    const medianNetworkFunctions = medianNetworksPaths.map(generateMedianFunction).join('');

    let solidityFile = 
`// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title LibSortNet
/// @notice Library for gas-efficient sorting networks.
/// @author totomanov (https://github.com/totomanov/sortnet/blob/master/src/LibSortNet.sol)
library LibSortNet {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      SORTING NETWORKS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

${sortingNetworkFunctions}
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                 MEDIAN SELECTION NETWORKS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

${medianNetworkFunctions}
    /// @notice Compare two words and swap if gt.
    /// @param fx The offset of the first word.
    /// @param fy The offset of the second word.
    /// @dev Swap if \`mload(fx) > mload(fy)\`.
    function cas(uint256 fx, uint256 fy) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            if gt(mload(fx), mload(fy)) {
                let ey := mload(fy)
                mstore(fy, mload(fx))
                mstore(fx, ey)
            }
        }
    }

    /// @notice Compare two words and swap if gt, returning the smaller word.
    /// @param fx The offset of the first word.
    /// @param fy The offset of the second word.
    /// @dev Swap if \`mload(fx) > mload(fy)\`.
    /// @return r The smaller word.
    function cas_ret0(uint256 fx, uint256 fy) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            r := mload(fx)
            let y := mload(fy)
            if gt(r, y) {
                mstore(fy, r)
                mstore(fx, y)
                r := y
            }
        }
    }

    /// @notice Compare two words and swap if gt, returning the bigger word.
    /// @param fx The offset of the first word.
    /// @param fy The offset of the second word.
    /// @dev Swap if \`mload(fx) > mload(fy)\`.
    /// @return r The bigger word.
    function cas_ret1(uint256 fx, uint256 fy) internal pure returns (uint256 r) {
        /// @solidity memory-safe-assembly
        assembly {
            let x := mload(fx)
            r := mload(fy)
            if gt(x, r) {
                mstore(fy, x)
                mstore(fx, r)
                r := x
            }
        }
    }
}\n`;

    fs.writeFileSync('generated/LibSortNet.sol', solidityFile);
}

function generateSortingFunction(networkPath) {
    const network = JSON.parse(fs.readFileSync(networkPath));
    const range = [...Array(network.N).keys()];

    return `    /// @notice Sorts an array with ${network.N} elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N${network.N}L${network.L}D${network.D}
    function sort${network.N}(uint256[] memory a) internal pure {
${range.map((i) => `        uint256 f${i};`).join('\n')}
        /// @solidity memory-safe-assembly
        assembly {
${range.map((i) => `            f${i} := add(a, 0x${Number(32 * (i + 1)).toString(16)})`).join('\n')}
        }
${network.nw.map(([i, j]) => `        cas(f${i}, f${j});`).join('\n')}
    }
\n`;
}

function generateMedianFunction(networkPath) {
    const network = JSON.parse(fs.readFileSync(networkPath));
    const range = [...Array(network.N).keys()];

    return `    /// @notice Returns the median of an array with ${network.N} elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N${network.N}L${network.L}D${network.D}
    /// @return m The median of the array.
    function median${network.N}(uint256[] memory a) internal pure returns (uint256 m) {
${range.map((i) => `        uint256 f${i};`).join('\n')}
        /// @solidity memory-safe-assembly
        assembly {
${range.map((i) => `            f${i} := add(a, 0x${Number(32 * (i + 1)).toString(16)})`).join('\n')}
        }
${network.nw.map(
    ([i, j], index) => {
        const args = `(f${i}, f${j});`;
        if (network.N % 2 == 1) {
            if (index < network.L - 1) {
                return `        cas${args}`
            } else {
                const retIndex = i == (network.N - 1) / 2 ? 0 : 1;
                return `        m = cas_ret${retIndex}${args}`
            }
        } else {
            if (index < network.L - 2) {
                return `        cas(f${i}, f${j});`
            } else {
                const retIndex = [network.N / 2 - 1, network.N / 2].includes(i) ? 0 : 1;
                if (index == network.L - 2) {
                    return `        uint256 m0 = cas_ret${retIndex}${args}`
                } else {
                    return `        uint256 m1 = cas_ret${retIndex}${args}
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }`
                }
            }
        }
    }
).join('\n')}
    }
\n`;
}

function parseFileName(filename) {
    const [_, size, operations, stages] = filename.split('_');
    return {
        size,
        operations,
        stages
    }
}

function tabs(n) {
    return [...Array(n).keys()].map(() => "    ").join('');
}

generateSortingNetworks();