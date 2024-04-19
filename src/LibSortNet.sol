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
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N2L1D1
    /// [(0,1)]
    function sort2(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
        }
        cas(f0, f1);
    }

    /// @notice Sorts an array with 3 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N3L3D3
    /// [(0,2)]
    /// [(0,1)]
    /// [(1,2)]
    function sort3(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
        }
        cas(f0, f2);
        cas(f0, f1);
        cas(f1, f2);
    }

    /// @notice Sorts an array with 4 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N4L5D3
    /// [(0,2),(1,3)]
    /// [(0,1),(2,3)]
    /// [(1,2)]
    function sort4(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
        }
        cas(f0, f2);
        cas(f1, f3);
        cas(f0, f1);
        cas(f2, f3);
        cas(f1, f2);
    }

    /// @notice Sorts an array with 5 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N5L9D5
    /// [(0,3),(1,4)]
    /// [(0,2),(1,3)]
    /// [(0,1),(2,4)]
    /// [(1,2),(3,4)]
    /// [(2,3)]
    function sort5(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
        }
        cas(f0, f3);
        cas(f1, f4);
        cas(f0, f2);
        cas(f1, f3);
        cas(f0, f1);
        cas(f2, f4);
        cas(f1, f2);
        cas(f3, f4);
        cas(f2, f3);
    }

    /// @notice Sorts an array with 6 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N6L12D5
    /// [(0,5),(1,3),(2,4)]
    /// [(1,2),(3,4)]
    /// [(0,3),(2,5)]
    /// [(0,1),(2,3),(4,5)]
    /// [(1,2),(3,4)]
    function sort6(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
        }
        cas(f0, f5);
        cas(f1, f3);
        cas(f2, f4);
        cas(f1, f2);
        cas(f3, f4);
        cas(f0, f3);
        cas(f2, f5);
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f1, f2);
        cas(f3, f4);
    }

    /// @notice Sorts an array with 7 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N7L16D6
    /// [(0,6),(2,3),(4,5)]
    /// [(0,2),(1,4),(3,6)]
    /// [(0,1),(2,5),(3,4)]
    /// [(1,2),(4,6)]
    /// [(2,3),(4,5)]
    /// [(1,2),(3,4),(5,6)]
    function sort7(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        uint256 f6;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
            f6 := add(a, 0xe0)
        }
        cas(f0, f6);
        cas(f2, f3);
        cas(f4, f5);
        cas(f0, f2);
        cas(f1, f4);
        cas(f3, f6);
        cas(f0, f1);
        cas(f2, f5);
        cas(f3, f4);
        cas(f1, f2);
        cas(f4, f6);
        cas(f2, f3);
        cas(f4, f5);
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
    }

    /// @notice Sorts an array with 8 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N8L19D6
    /// [(0,2),(1,3),(4,6),(5,7)]
    /// [(0,4),(1,5),(2,6),(3,7)]
    /// [(0,1),(2,3),(4,5),(6,7)]
    /// [(2,4),(3,5)]
    /// [(1,4),(3,6)]
    /// [(1,2),(3,4),(5,6)]
    function sort8(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        uint256 f6;
        uint256 f7;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
            f6 := add(a, 0xe0)
            f7 := add(a, 0x100)
        }
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f2, f4);
        cas(f3, f5);
        cas(f1, f4);
        cas(f3, f6);
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
    }

    /// @notice Sorts an array with 9 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N9L25D7
    /// [(0,3),(1,7),(2,5),(4,8)]
    /// [(0,7),(2,4),(3,8),(5,6)]
    /// [(0,2),(1,3),(4,5),(7,8)]
    /// [(1,4),(3,6),(5,7)]
    /// [(0,1),(2,4),(3,5),(6,8)]
    /// [(2,3),(4,5),(6,7)]
    /// [(1,2),(3,4),(5,6)]
    function sort9(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        uint256 f6;
        uint256 f7;
        uint256 f8;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
            f6 := add(a, 0xe0)
            f7 := add(a, 0x100)
            f8 := add(a, 0x120)
        }
        cas(f0, f3);
        cas(f1, f7);
        cas(f2, f5);
        cas(f4, f8);
        cas(f0, f7);
        cas(f2, f4);
        cas(f3, f8);
        cas(f5, f6);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f5);
        cas(f7, f8);
        cas(f1, f4);
        cas(f3, f6);
        cas(f5, f7);
        cas(f0, f1);
        cas(f2, f4);
        cas(f3, f5);
        cas(f6, f8);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
    }

    /// @notice Sorts an array with 10 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N10L29D8
    /// [(0,8),(1,9),(2,7),(3,5),(4,6)]
    /// [(0,2),(1,4),(5,8),(7,9)]
    /// [(0,3),(2,4),(5,7),(6,9)]
    /// [(0,1),(3,6),(8,9)]
    /// [(1,5),(2,3),(4,8),(6,7)]
    /// [(1,2),(3,5),(4,6),(7,8)]
    /// [(2,3),(4,5),(6,7)]
    /// [(3,4),(5,6)]
    function sort10(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        uint256 f6;
        uint256 f7;
        uint256 f8;
        uint256 f9;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
            f6 := add(a, 0xe0)
            f7 := add(a, 0x100)
            f8 := add(a, 0x120)
            f9 := add(a, 0x140)
        }
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f7);
        cas(f3, f5);
        cas(f4, f6);
        cas(f0, f2);
        cas(f1, f4);
        cas(f5, f8);
        cas(f7, f9);
        cas(f0, f3);
        cas(f2, f4);
        cas(f5, f7);
        cas(f6, f9);
        cas(f0, f1);
        cas(f3, f6);
        cas(f8, f9);
        cas(f1, f5);
        cas(f2, f3);
        cas(f4, f8);
        cas(f6, f7);
        cas(f1, f2);
        cas(f3, f5);
        cas(f4, f6);
        cas(f7, f8);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f3, f4);
        cas(f5, f6);
    }

    /// @notice Sorts an array with 11 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N11L35D8
    /// [(0,9),(1,6),(2,4),(3,7),(5,8)]
    /// [(0,1),(3,5),(4,10),(6,9),(7,8)]
    /// [(1,3),(2,5),(4,7),(8,10)]
    /// [(0,4),(1,2),(3,7),(5,9),(6,8)]
    /// [(0,1),(2,6),(4,5),(7,8),(9,10)]
    /// [(2,4),(3,6),(5,7),(8,9)]
    /// [(1,2),(3,4),(5,6),(7,8)]
    /// [(2,3),(4,5),(6,7)]
    function sort11(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        uint256 f6;
        uint256 f7;
        uint256 f8;
        uint256 f9;
        uint256 f10;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
            f6 := add(a, 0xe0)
            f7 := add(a, 0x100)
            f8 := add(a, 0x120)
            f9 := add(a, 0x140)
            f10 := add(a, 0x160)
        }
        cas(f0, f9);
        cas(f1, f6);
        cas(f2, f4);
        cas(f3, f7);
        cas(f5, f8);
        cas(f0, f1);
        cas(f3, f5);
        cas(f4, f10);
        cas(f6, f9);
        cas(f7, f8);
        cas(f1, f3);
        cas(f2, f5);
        cas(f4, f7);
        cas(f8, f10);
        cas(f0, f4);
        cas(f1, f2);
        cas(f3, f7);
        cas(f5, f9);
        cas(f6, f8);
        cas(f0, f1);
        cas(f2, f6);
        cas(f4, f5);
        cas(f7, f8);
        cas(f9, f10);
        cas(f2, f4);
        cas(f3, f6);
        cas(f5, f7);
        cas(f8, f9);
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
    }

    /// @notice Sorts an array with 12 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N12L39D9
    /// [(0,8),(1,7),(2,6),(3,11),(4,10),(5,9)]
    /// [(0,1),(2,5),(3,4),(6,9),(7,8),(10,11)]
    /// [(0,2),(1,6),(5,10),(9,11)]
    /// [(0,3),(1,2),(4,6),(5,7),(8,11),(9,10)]
    /// [(1,4),(3,5),(6,8),(7,10)]
    /// [(1,3),(2,5),(6,9),(8,10)]
    /// [(2,3),(4,5),(6,7),(8,9)]
    /// [(4,6),(5,7)]
    /// [(3,4),(5,6),(7,8)]
    function sort12(uint256[] memory a) internal pure {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        uint256 f3;
        uint256 f4;
        uint256 f5;
        uint256 f6;
        uint256 f7;
        uint256 f8;
        uint256 f9;
        uint256 f10;
        uint256 f11;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
            f3 := add(a, 0x80)
            f4 := add(a, 0xa0)
            f5 := add(a, 0xc0)
            f6 := add(a, 0xe0)
            f7 := add(a, 0x100)
            f8 := add(a, 0x120)
            f9 := add(a, 0x140)
            f10 := add(a, 0x160)
            f11 := add(a, 0x180)
        }
        cas(f0, f8);
        cas(f1, f7);
        cas(f2, f6);
        cas(f3, f11);
        cas(f4, f10);
        cas(f5, f9);
        cas(f0, f1);
        cas(f2, f5);
        cas(f3, f4);
        cas(f6, f9);
        cas(f7, f8);
        cas(f10, f11);
        cas(f0, f2);
        cas(f1, f6);
        cas(f5, f10);
        cas(f9, f11);
        cas(f0, f3);
        cas(f1, f2);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f11);
        cas(f9, f10);
        cas(f1, f4);
        cas(f3, f5);
        cas(f6, f8);
        cas(f7, f10);
        cas(f1, f3);
        cas(f2, f5);
        cas(f6, f9);
        cas(f8, f10);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f4, f6);
        cas(f5, f7);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
    }

    /// @notice Compare two words and swap their contents if necessary.
    /// @param fx The offset of the first word.
    /// @param fy The offset of the second word.
    /// @dev Swapped if `mload(fx) > mload(fy)`.
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
}
