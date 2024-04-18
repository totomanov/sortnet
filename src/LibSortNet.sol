// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library LibSortNet {
    function sort2(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            cas(f0, f1)
        }
    }

    function sort3(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            let f2 := add(a, 0x60)
            cas(f0, f2)
            cas(f0, f1)
            cas(f1, f2)
        }
    }

    function sort4(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            let f2 := add(a, 0x60)
            let f3 := add(a, 0x80)
            cas(f0, f2)
            cas(f1, f3)
            cas(f0, f1)
            cas(f2, f3)
            cas(f1, f2)
        }
    }

    function sort5(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            let f2 := add(a, 0x60)
            let f3 := add(a, 0x80)
            let f4 := add(a, 0xa0)
            cas(f0, f3)
            cas(f1, f4)
            cas(f0, f2)
            cas(f1, f3)
            cas(f0, f1)
            cas(f2, f4)
            cas(f1, f2)
            cas(f3, f4)
            cas(f2, f3)
        }
    }

    function sort6(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            let f2 := add(a, 0x60)
            let f3 := add(a, 0x80)
            let f4 := add(a, 0xa0)
            let f5 := add(a, 0xc0)
            cas(f0, f5)
            cas(f1, f3)
            cas(f2, f4)
            cas(f1, f2)
            cas(f3, f4)
            cas(f0, f3)
            cas(f2, f5)
            cas(f0, f1)
            cas(f2, f3)
            cas(f4, f5)
            cas(f1, f2)
            cas(f3, f4)
        }
    }

    function sort7(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            let f2 := add(a, 0x60)
            let f3 := add(a, 0x80)
            let f4 := add(a, 0xa0)
            let f5 := add(a, 0xc0)
            let f6 := add(a, 0xe0)
            cas(f0, f6)
            cas(f2, f3)
            cas(f4, f5)
            cas(f0, f2)
            cas(f1, f4)
            cas(f3, f6)
            cas(f0, f1)
            cas(f2, f5)
            cas(f3, f4)
            cas(f1, f2)
            cas(f4, f6)
            cas(f2, f3)
            cas(f4, f5)
            cas(f1, f2)
            cas(f3, f4)
            cas(f5, f6)
        }
    }

    function sort8(uint256[] memory a) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            function cas(fx, fy) {
                if gt(mload(fx), mload(fy)) {
                    let ey := mload(fy)
                    mstore(fy, mload(fx))
                    mstore(fx, ey)
                }
            }

            let f0 := add(a, 0x20)
            let f1 := add(a, 0x40)
            let f2 := add(a, 0x60)
            let f3 := add(a, 0x80)
            let f4 := add(a, 0xa0)
            let f5 := add(a, 0xc0)
            let f6 := add(a, 0xe0)
            let f7 := add(a, 0x100)
            cas(f0, f2)
            cas(f1, f3)
            cas(f4, f6)
            cas(f5, f7)
            cas(f0, f4)
            cas(f1, f5)
            cas(f2, f6)
            cas(f3, f7)
            cas(f0, f1)
            cas(f2, f3)
            cas(f4, f5)
            cas(f6, f7)
            cas(f2, f4)
            cas(f3, f5)
            cas(f1, f4)
            cas(f3, f6)
            cas(f1, f2)
            cas(f3, f4)
            cas(f5, f6)
        }
    }
}
