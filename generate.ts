let source = "";
const sortingNetworks = {
  2: [[0, 1]],
  3: [
    [0, 2],
    [0, 1],
    [1, 2],
  ],
  4: [
    [0, 2],
    [1, 3],
    [0, 1],
    [2, 3],
    [1, 2],
  ],
};

const memidx = (i: number) =>
  `0x${Number(i * 32)
    .toString(16)
    .padEnd(2, "0")}`;

function generate() {
  writeLine("// SPDX-License-Identifier: MIT");
  writeLine("pragma solidity ^0.8.4;");
  writeLine("");
  writeLine("library LibSortNet {");

  for (const [n, network] of Object.entries(sortingNetworks)) {
    writeLine(`    function sort${n}(uint256[] memory a) internal pure {`);
    [...Array(Number(n)).keys()].forEach((i) => {
      writeLine(`        uint256 f${i};`);
    });
    writeLine("        /// @solidity memory-safe-assembly");
    writeLine("        assembly {");
    [...Array(Number(n)).keys()].forEach((i) => {
      writeLine(`            f${i} := add(a, ${memidx(i + 1)})`);
    });
    writeLine("        }");
    network.forEach(([lhs, rhs]) => {
      writeLine(`        cas(f${lhs}, f${rhs});`);
    });
    writeLine(`    }`);
    writeLine("");

    writeLine(`    function sort${n}(uint256[${n}] memory a) internal pure {`);
    [...Array(Number(n)).keys()].forEach((i) => {
      writeLine(`        uint256 f${i};`);
    });
    writeLine("        /// @solidity memory-safe-assembly");
    writeLine("        assembly {");
    [...Array(Number(n)).keys()].forEach((i) => {
      writeLine(`            f${i} := add(a, ${memidx(i)})`);
    });
    writeLine("        }");
    network.forEach(([lhs, rhs]) => {
      writeLine(`        cas(f${lhs}, f${rhs});`);
    });
    writeLine(`    }`);
    writeLine("");
  }

  writeLine("}");
  console.log(source);
}

function writeLine(line: string) {
  source = `${source}\n${line}`;
}

generate();
