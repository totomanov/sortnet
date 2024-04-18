// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/// @title LibSortNet
/// @notice Library for gas-efficient sorting networks.
/// @author totomanov (https://github.com/totomanov/sortnet/blob/master/src/LibSortNet.sol)
library LibSortNet {
    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      SORTING NETWORKS                      */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Sorts an array with 2 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,1)]
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

    /// @notice Sorts an array with 3 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,2)]
    /// [(0,1)]
    /// [(1,2)]
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

    /// @notice Sorts an array with 4 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,2),(1,3)]
    /// [(0,1),(2,3)]
    /// [(1,2)]
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

    /// @notice Sorts an array with 5 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,3),(1,4)]
    /// [(0,2),(1,3)]
    /// [(0,1),(2,4)]
    /// [(1,2),(3,4)]
    /// [(2,3)]
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

    /// @notice Sorts an array with 6 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,5),(1,3),(2,4)]
    /// [(1,2),(3,4)]
    /// [(0,3),(2,5)]
    /// [(0,1),(2,3),(4,5)]
    /// [(1,2),(3,4)]
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

    /// @notice Sorts an array with 7 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,6),(2,3),(4,5)]
    /// [(0,2),(1,4),(3,6)]
    /// [(0,1),(2,5),(3,4)]
    /// [(1,2),(4,6)]
    /// [(2,3),(4,5)]
    /// [(1,2),(3,4),(5,6)]
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

    /// @notice Sorts an array with 8 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,2),(1,3),(4,6),(5,7)]
    /// [(0,4),(1,5),(2,6),(3,7)]
    /// [(0,1),(2,3),(4,5),(6,7)]
    /// [(2,4),(3,5)]
    /// [(1,4),(3,6)]
    /// [(1,2),(3,4),(5,6)]
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

    /// @notice Sorts an array with 9 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,3),(1,7),(2,5),(4,8)]
    /// [(0,7),(2,4),(3,8),(5,6)]
    /// [(0,2),(1,3),(4,5),(7,8)]
    /// [(1,4),(3,6),(5,7)]
    /// [(0,1),(2,4),(3,5),(6,8)]
    /// [(2,3),(4,5),(6,7)]
    /// [(1,2),(3,4),(5,6)]
    function sort9(uint256[] memory a) internal pure {
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
            let f8 := add(a, 0x120)
            cas(f0, f3)
            cas(f1, f7)
            cas(f2, f5)
            cas(f4, f8)
            cas(f0, f7)
            cas(f2, f4)
            cas(f3, f8)
            cas(f5, f6)
            cas(f0, f2)
            cas(f1, f3)
            cas(f4, f5)
            cas(f7, f8)
            cas(f1, f4)
            cas(f3, f6)
            cas(f5, f7)
            cas(f0, f1)
            cas(f2, f4)
            cas(f3, f5)
            cas(f6, f8)
            cas(f2, f3)
            cas(f4, f5)
            cas(f6, f7)
            cas(f1, f2)
            cas(f3, f4)
            cas(f5, f6)
        }
    }

    /// @notice Sorts an array with 10 elements.
    /// @dev Note: Array length is NOT validated.
    /// [(0,8),(1,9),(2,7),(3,5),(4,6)]
    /// [(0,2),(1,4),(5,8),(7,9)]
    /// [(0,3),(2,4),(5,7),(6,9)]
    /// [(0,1),(3,6),(8,9)]
    /// [(1,5),(2,3),(4,8),(6,7)]
    /// [(1,2),(3,5),(4,6),(7,8)]
    /// [(2,3),(4,5),(6,7)]
    /// [(3,4),(5,6)]
    function sort10(uint256[] memory a) internal pure {
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
            let f8 := add(a, 0x120)
            let f9 := add(a, 0x140)
            /// [(0,8),(1,9),(2,7),(3,5),(4,6)]
            /// [(0,2),(1,4),(5,8),(7,9)]
            /// [(0,3),(2,4),(5,7),(6,9)]
            /// [(0,1),(3,6),(8,9)]
            /// [(1,5),(2,3),(4,8),(6,7)]
            /// [(1,2),(3,5),(4,6),(7,8)]
            /// [(2,3),(4,5),(6,7)]
            /// [(3,4),(5,6)]
            cas(f0, f8)
            cas(f1, f9)
            cas(f2, f7)
            cas(f3, f5)
            cas(f4, f6)
            cas(f0, f2)
            cas(f1, f4)
            cas(f5, f8)
            cas(f7, f9)
            cas(f0, f3)
            cas(f2, f4)
            cas(f5, f7)
            cas(f6, f9)
            cas(f0, f1)
            cas(f3, f6)
            cas(f8, f9)
            cas(f1, f5)
            cas(f2, f3)
            cas(f4, f8)
            cas(f6, f7)
            cas(f1, f2)
            cas(f3, f5)
            cas(f4, f6)
            cas(f7, f8)
            cas(f2, f3)
            cas(f4, f5)
            cas(f6, f7)
            cas(f3, f4)
            cas(f5, f6)
        }
    }
}
