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

    /// @notice Sorts an array with 13 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N13L45D10
    function sort13(uint256[] memory a) internal pure {
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
        uint256 f12;
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
            f12 := add(a, 0x1a0)
        }
        cas(f0, f12);
        cas(f1, f10);
        cas(f2, f9);
        cas(f3, f7);
        cas(f5, f11);
        cas(f6, f8);
        cas(f1, f6);
        cas(f2, f3);
        cas(f4, f11);
        cas(f7, f9);
        cas(f8, f10);
        cas(f0, f4);
        cas(f1, f2);
        cas(f3, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f4, f6);
        cas(f5, f9);
        cas(f8, f11);
        cas(f10, f12);
        cas(f0, f5);
        cas(f3, f8);
        cas(f4, f7);
        cas(f6, f11);
        cas(f9, f10);
        cas(f0, f1);
        cas(f2, f5);
        cas(f6, f9);
        cas(f7, f8);
        cas(f10, f11);
        cas(f1, f3);
        cas(f2, f4);
        cas(f5, f6);
        cas(f9, f10);
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f7);
        cas(f6, f8);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f3, f4);
        cas(f5, f6);
    }

    /// @notice Sorts an array with 14 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N14L51D10
    function sort14(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f8);
        cas(f5, f9);
        cas(f10, f12);
        cas(f11, f13);
        cas(f0, f4);
        cas(f1, f2);
        cas(f3, f7);
        cas(f5, f8);
        cas(f6, f10);
        cas(f9, f13);
        cas(f11, f12);
        cas(f0, f6);
        cas(f1, f5);
        cas(f3, f9);
        cas(f4, f10);
        cas(f7, f13);
        cas(f8, f12);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f6);
        cas(f7, f9);
        cas(f1, f3);
        cas(f2, f8);
        cas(f5, f11);
        cas(f6, f7);
        cas(f10, f12);
        cas(f1, f4);
        cas(f2, f6);
        cas(f3, f5);
        cas(f7, f11);
        cas(f8, f10);
        cas(f9, f12);
        cas(f2, f4);
        cas(f3, f6);
        cas(f5, f8);
        cas(f7, f10);
        cas(f9, f11);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f6, f7);
    }

    /// @notice Sorts an array with 15 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N15L56D10
    function sort15(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
        }
        cas(f1, f2);
        cas(f3, f10);
        cas(f4, f14);
        cas(f5, f8);
        cas(f6, f13);
        cas(f7, f12);
        cas(f9, f11);
        cas(f0, f14);
        cas(f1, f5);
        cas(f2, f8);
        cas(f3, f7);
        cas(f6, f9);
        cas(f10, f12);
        cas(f11, f13);
        cas(f0, f7);
        cas(f1, f6);
        cas(f2, f9);
        cas(f4, f10);
        cas(f5, f11);
        cas(f8, f13);
        cas(f12, f14);
        cas(f0, f6);
        cas(f2, f4);
        cas(f3, f5);
        cas(f7, f11);
        cas(f8, f10);
        cas(f9, f12);
        cas(f13, f14);
        cas(f0, f3);
        cas(f1, f2);
        cas(f4, f7);
        cas(f5, f9);
        cas(f6, f8);
        cas(f10, f11);
        cas(f12, f13);
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f6);
        cas(f7, f9);
        cas(f10, f12);
        cas(f11, f13);
        cas(f1, f2);
        cas(f3, f5);
        cas(f8, f10);
        cas(f11, f12);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f5, f6);
        cas(f7, f8);
    }

    /// @notice Sorts an array with 16 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N16L60D10
    function sort16(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
        }
        cas(f0, f13);
        cas(f1, f12);
        cas(f2, f15);
        cas(f3, f14);
        cas(f4, f8);
        cas(f5, f6);
        cas(f7, f11);
        cas(f9, f10);
        cas(f0, f5);
        cas(f1, f7);
        cas(f2, f9);
        cas(f3, f4);
        cas(f6, f13);
        cas(f8, f14);
        cas(f10, f15);
        cas(f11, f12);
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f8);
        cas(f7, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f10);
        cas(f5, f11);
        cas(f6, f7);
        cas(f8, f9);
        cas(f12, f14);
        cas(f13, f15);
        cas(f1, f2);
        cas(f3, f12);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f13, f14);
        cas(f1, f4);
        cas(f2, f6);
        cas(f5, f8);
        cas(f7, f10);
        cas(f9, f13);
        cas(f11, f14);
        cas(f2, f4);
        cas(f3, f6);
        cas(f9, f12);
        cas(f11, f13);
        cas(f3, f5);
        cas(f6, f8);
        cas(f7, f9);
        cas(f10, f12);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f6, f7);
        cas(f8, f9);
    }

    /// @notice Sorts an array with 17 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N17L71D12
    function sort17(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
        }
        cas(f0, f11);
        cas(f1, f15);
        cas(f2, f10);
        cas(f3, f5);
        cas(f4, f6);
        cas(f8, f12);
        cas(f9, f16);
        cas(f13, f14);
        cas(f0, f6);
        cas(f1, f13);
        cas(f2, f8);
        cas(f4, f14);
        cas(f5, f15);
        cas(f7, f11);
        cas(f0, f8);
        cas(f3, f7);
        cas(f4, f9);
        cas(f6, f16);
        cas(f10, f11);
        cas(f12, f14);
        cas(f0, f2);
        cas(f1, f4);
        cas(f5, f6);
        cas(f7, f13);
        cas(f8, f9);
        cas(f10, f12);
        cas(f11, f14);
        cas(f15, f16);
        cas(f0, f3);
        cas(f2, f5);
        cas(f6, f11);
        cas(f7, f10);
        cas(f9, f13);
        cas(f12, f15);
        cas(f14, f16);
        cas(f0, f1);
        cas(f3, f4);
        cas(f5, f10);
        cas(f6, f9);
        cas(f7, f8);
        cas(f11, f15);
        cas(f13, f14);
        cas(f1, f2);
        cas(f3, f7);
        cas(f4, f8);
        cas(f6, f12);
        cas(f11, f13);
        cas(f14, f15);
        cas(f1, f3);
        cas(f2, f7);
        cas(f4, f5);
        cas(f9, f11);
        cas(f10, f12);
        cas(f13, f14);
        cas(f2, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f3, f4);
        cas(f6, f8);
        cas(f7, f9);
        cas(f10, f12);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
    }

    /// @notice Sorts an array with 18 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N18L77D12
    function sort18(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f8);
        cas(f9, f11);
        cas(f14, f16);
        cas(f15, f17);
        cas(f0, f14);
        cas(f1, f16);
        cas(f2, f15);
        cas(f3, f17);
        cas(f0, f6);
        cas(f1, f10);
        cas(f2, f9);
        cas(f7, f16);
        cas(f8, f15);
        cas(f11, f17);
        cas(f1, f4);
        cas(f3, f9);
        cas(f5, f7);
        cas(f8, f14);
        cas(f10, f12);
        cas(f13, f16);
        cas(f0, f1);
        cas(f2, f5);
        cas(f3, f13);
        cas(f4, f14);
        cas(f7, f9);
        cas(f8, f10);
        cas(f12, f15);
        cas(f16, f17);
        cas(f1, f2);
        cas(f3, f5);
        cas(f4, f6);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f16);
        cas(f4, f8);
        cas(f5, f12);
        cas(f6, f10);
        cas(f7, f11);
        cas(f9, f13);
        cas(f1, f4);
        cas(f2, f8);
        cas(f3, f6);
        cas(f5, f7);
        cas(f9, f15);
        cas(f10, f12);
        cas(f11, f14);
        cas(f13, f16);
        cas(f2, f4);
        cas(f5, f8);
        cas(f6, f10);
        cas(f7, f11);
        cas(f9, f12);
        cas(f13, f15);
        cas(f3, f5);
        cas(f6, f8);
        cas(f7, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
    }

    /// @notice Sorts an array with 19 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N19L85D12
    function sort19(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
        }
        cas(f0, f12);
        cas(f1, f4);
        cas(f2, f8);
        cas(f3, f5);
        cas(f6, f17);
        cas(f7, f11);
        cas(f9, f14);
        cas(f10, f13);
        cas(f15, f16);
        cas(f0, f2);
        cas(f1, f7);
        cas(f3, f6);
        cas(f4, f11);
        cas(f5, f17);
        cas(f8, f12);
        cas(f10, f15);
        cas(f13, f16);
        cas(f14, f18);
        cas(f3, f10);
        cas(f4, f14);
        cas(f5, f15);
        cas(f6, f13);
        cas(f7, f9);
        cas(f11, f17);
        cas(f16, f18);
        cas(f0, f7);
        cas(f1, f10);
        cas(f4, f6);
        cas(f9, f15);
        cas(f11, f16);
        cas(f12, f17);
        cas(f13, f14);
        cas(f0, f3);
        cas(f2, f6);
        cas(f5, f7);
        cas(f8, f11);
        cas(f12, f16);
        cas(f1, f8);
        cas(f2, f9);
        cas(f3, f4);
        cas(f6, f15);
        cas(f7, f13);
        cas(f10, f11);
        cas(f12, f18);
        cas(f1, f3);
        cas(f2, f5);
        cas(f6, f9);
        cas(f7, f12);
        cas(f8, f10);
        cas(f11, f14);
        cas(f17, f18);
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f8);
        cas(f6, f10);
        cas(f9, f12);
        cas(f14, f15);
        cas(f16, f17);
        cas(f1, f2);
        cas(f5, f8);
        cas(f6, f7);
        cas(f9, f11);
        cas(f10, f13);
        cas(f14, f16);
        cas(f15, f17);
        cas(f3, f6);
        cas(f4, f5);
        cas(f7, f9);
        cas(f8, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
    }

    /// @notice Sorts an array with 20 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N20L91D12
    function sort20(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
        }
        cas(f0, f3);
        cas(f1, f7);
        cas(f2, f5);
        cas(f4, f8);
        cas(f6, f9);
        cas(f10, f13);
        cas(f11, f15);
        cas(f12, f18);
        cas(f14, f17);
        cas(f16, f19);
        cas(f0, f14);
        cas(f1, f11);
        cas(f2, f16);
        cas(f3, f17);
        cas(f4, f12);
        cas(f5, f19);
        cas(f6, f10);
        cas(f7, f15);
        cas(f8, f18);
        cas(f9, f13);
        cas(f0, f4);
        cas(f1, f2);
        cas(f3, f8);
        cas(f5, f7);
        cas(f11, f16);
        cas(f12, f14);
        cas(f15, f19);
        cas(f17, f18);
        cas(f1, f6);
        cas(f2, f12);
        cas(f3, f5);
        cas(f4, f11);
        cas(f7, f17);
        cas(f8, f15);
        cas(f13, f18);
        cas(f14, f16);
        cas(f0, f1);
        cas(f2, f6);
        cas(f7, f10);
        cas(f9, f12);
        cas(f13, f17);
        cas(f18, f19);
        cas(f1, f6);
        cas(f5, f9);
        cas(f7, f11);
        cas(f8, f12);
        cas(f10, f14);
        cas(f13, f18);
        cas(f3, f5);
        cas(f4, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f15);
        cas(f14, f16);
        cas(f1, f3);
        cas(f2, f4);
        cas(f5, f7);
        cas(f6, f10);
        cas(f9, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f16, f18);
        cas(f1, f2);
        cas(f3, f4);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f15, f16);
        cas(f17, f18);
        cas(f2, f3);
        cas(f4, f6);
        cas(f5, f8);
        cas(f7, f9);
        cas(f10, f12);
        cas(f11, f14);
        cas(f13, f15);
        cas(f16, f17);
        cas(f4, f5);
        cas(f6, f8);
        cas(f7, f10);
        cas(f9, f12);
        cas(f11, f13);
        cas(f14, f15);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
    }

    /// @notice Sorts an array with 21 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N21L100D12
    function sort21(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
        }
        cas(f0, f7);
        cas(f1, f10);
        cas(f3, f5);
        cas(f4, f8);
        cas(f6, f13);
        cas(f9, f19);
        cas(f11, f14);
        cas(f12, f17);
        cas(f15, f16);
        cas(f18, f20);
        cas(f0, f11);
        cas(f1, f15);
        cas(f2, f12);
        cas(f3, f4);
        cas(f5, f8);
        cas(f6, f9);
        cas(f7, f14);
        cas(f10, f16);
        cas(f13, f19);
        cas(f17, f20);
        cas(f0, f6);
        cas(f1, f3);
        cas(f2, f18);
        cas(f4, f15);
        cas(f5, f10);
        cas(f8, f16);
        cas(f11, f17);
        cas(f12, f13);
        cas(f14, f20);
        cas(f2, f6);
        cas(f5, f12);
        cas(f7, f18);
        cas(f8, f14);
        cas(f9, f11);
        cas(f10, f17);
        cas(f13, f19);
        cas(f16, f20);
        cas(f1, f2);
        cas(f4, f7);
        cas(f5, f9);
        cas(f6, f17);
        cas(f10, f13);
        cas(f11, f12);
        cas(f14, f19);
        cas(f15, f18);
        cas(f0, f2);
        cas(f3, f6);
        cas(f4, f5);
        cas(f7, f10);
        cas(f8, f11);
        cas(f9, f15);
        cas(f12, f16);
        cas(f13, f18);
        cas(f14, f17);
        cas(f19, f20);
        cas(f0, f1);
        cas(f2, f3);
        cas(f5, f9);
        cas(f6, f12);
        cas(f7, f8);
        cas(f11, f14);
        cas(f13, f15);
        cas(f16, f19);
        cas(f17, f18);
        cas(f1, f2);
        cas(f3, f9);
        cas(f6, f13);
        cas(f10, f11);
        cas(f12, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f1, f4);
        cas(f2, f5);
        cas(f3, f7);
        cas(f6, f10);
        cas(f8, f9);
        cas(f11, f12);
        cas(f13, f14);
        cas(f17, f18);
        cas(f2, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f11);
        cas(f10, f13);
        cas(f12, f15);
        cas(f14, f16);
        cas(f3, f4);
        cas(f5, f7);
        cas(f6, f8);
        cas(f9, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f16);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
    }

    /// @notice Sorts an array with 22 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N22L106D13
    function sort22(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f14, f16);
        cas(f15, f17);
        cas(f18, f20);
        cas(f19, f21);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f10);
        cas(f9, f12);
        cas(f11, f13);
        cas(f14, f18);
        cas(f15, f19);
        cas(f16, f20);
        cas(f17, f21);
        cas(f0, f14);
        cas(f1, f15);
        cas(f2, f18);
        cas(f3, f19);
        cas(f4, f16);
        cas(f5, f17);
        cas(f6, f20);
        cas(f7, f21);
        cas(f9, f11);
        cas(f10, f12);
        cas(f2, f8);
        cas(f3, f11);
        cas(f6, f9);
        cas(f10, f18);
        cas(f12, f15);
        cas(f13, f19);
        cas(f0, f2);
        cas(f1, f10);
        cas(f3, f16);
        cas(f5, f18);
        cas(f6, f14);
        cas(f7, f15);
        cas(f8, f12);
        cas(f9, f13);
        cas(f11, f20);
        cas(f19, f21);
        cas(f2, f6);
        cas(f3, f10);
        cas(f4, f8);
        cas(f5, f12);
        cas(f9, f16);
        cas(f11, f18);
        cas(f13, f17);
        cas(f15, f19);
        cas(f1, f4);
        cas(f7, f13);
        cas(f8, f14);
        cas(f9, f12);
        cas(f17, f20);
        cas(f1, f2);
        cas(f3, f8);
        cas(f4, f6);
        cas(f7, f11);
        cas(f10, f14);
        cas(f13, f18);
        cas(f15, f17);
        cas(f19, f20);
        cas(f2, f4);
        cas(f5, f10);
        cas(f7, f9);
        cas(f11, f16);
        cas(f12, f14);
        cas(f17, f19);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f11);
        cas(f10, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f3, f5);
        cas(f6, f7);
        cas(f8, f10);
        cas(f9, f12);
        cas(f11, f13);
        cas(f14, f15);
        cas(f16, f18);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
    }

    /// @notice Sorts an array with 23 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N23L114D14
    function sort23(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f21, f22);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f17, f21);
        cas(f18, f20);
        cas(f19, f22);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f1, f2);
        cas(f5, f18);
        cas(f7, f19);
        cas(f9, f16);
        cas(f10, f21);
        cas(f12, f20);
        cas(f15, f22);
        cas(f5, f9);
        cas(f6, f7);
        cas(f10, f18);
        cas(f11, f21);
        cas(f12, f17);
        cas(f13, f20);
        cas(f14, f15);
        cas(f3, f17);
        cas(f6, f16);
        cas(f7, f14);
        cas(f8, f12);
        cas(f15, f19);
        cas(f20, f21);
        cas(f3, f4);
        cas(f5, f8);
        cas(f6, f10);
        cas(f9, f12);
        cas(f13, f16);
        cas(f14, f15);
        cas(f17, f18);
        cas(f19, f21);
        cas(f0, f5);
        cas(f1, f8);
        cas(f2, f12);
        cas(f3, f9);
        cas(f4, f10);
        cas(f7, f13);
        cas(f11, f17);
        cas(f14, f16);
        cas(f18, f20);
        cas(f2, f6);
        cas(f3, f5);
        cas(f4, f8);
        cas(f7, f11);
        cas(f10, f12);
        cas(f13, f18);
        cas(f14, f17);
        cas(f15, f20);
        cas(f1, f3);
        cas(f2, f5);
        cas(f6, f9);
        cas(f7, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f18);
        cas(f16, f17);
        cas(f19, f20);
        cas(f2, f3);
        cas(f4, f6);
        cas(f8, f9);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f19);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f12, f13);
        cas(f14, f15);
        cas(f17, f18);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f16, f17);
    }

    /// @notice Sorts an array with 24 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N24L120D13
    function sort24(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
        }
        cas(f0, f20);
        cas(f1, f12);
        cas(f2, f16);
        cas(f3, f23);
        cas(f4, f6);
        cas(f5, f10);
        cas(f7, f21);
        cas(f8, f14);
        cas(f9, f15);
        cas(f11, f22);
        cas(f13, f18);
        cas(f17, f19);
        cas(f0, f3);
        cas(f1, f11);
        cas(f2, f7);
        cas(f4, f17);
        cas(f5, f13);
        cas(f6, f19);
        cas(f8, f9);
        cas(f10, f18);
        cas(f12, f22);
        cas(f14, f15);
        cas(f16, f21);
        cas(f20, f23);
        cas(f0, f1);
        cas(f2, f4);
        cas(f3, f12);
        cas(f5, f8);
        cas(f6, f9);
        cas(f7, f10);
        cas(f11, f20);
        cas(f13, f16);
        cas(f14, f17);
        cas(f15, f18);
        cas(f19, f21);
        cas(f22, f23);
        cas(f2, f5);
        cas(f4, f8);
        cas(f6, f11);
        cas(f7, f14);
        cas(f9, f16);
        cas(f12, f17);
        cas(f15, f19);
        cas(f18, f21);
        cas(f1, f8);
        cas(f3, f14);
        cas(f4, f7);
        cas(f9, f20);
        cas(f10, f12);
        cas(f11, f13);
        cas(f15, f22);
        cas(f16, f19);
        cas(f0, f7);
        cas(f1, f5);
        cas(f3, f4);
        cas(f6, f11);
        cas(f8, f15);
        cas(f9, f14);
        cas(f10, f13);
        cas(f12, f17);
        cas(f16, f23);
        cas(f18, f22);
        cas(f19, f20);
        cas(f0, f2);
        cas(f1, f6);
        cas(f4, f7);
        cas(f5, f9);
        cas(f8, f10);
        cas(f13, f15);
        cas(f14, f18);
        cas(f16, f19);
        cas(f17, f22);
        cas(f21, f23);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f8);
        cas(f7, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f16);
        cas(f15, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f1, f2);
        cas(f3, f6);
        cas(f4, f10);
        cas(f7, f8);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f19);
        cas(f15, f16);
        cas(f17, f20);
        cas(f21, f22);
        cas(f2, f3);
        cas(f5, f10);
        cas(f6, f7);
        cas(f8, f9);
        cas(f13, f18);
        cas(f14, f15);
        cas(f16, f17);
        cas(f20, f21);
        cas(f3, f4);
        cas(f5, f7);
        cas(f10, f12);
        cas(f11, f13);
        cas(f16, f18);
        cas(f19, f20);
        cas(f4, f6);
        cas(f8, f10);
        cas(f9, f12);
        cas(f11, f14);
        cas(f13, f15);
        cas(f17, f19);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
    }

    /// @notice Sorts an array with 25 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N25L130D15
    function sort25(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f21, f22);
        cas(f23, f24);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f18, f21);
        cas(f20, f23);
        cas(f22, f24);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f16, f20);
        cas(f17, f22);
        cas(f19, f24);
        cas(f21, f23);
        cas(f1, f18);
        cas(f3, f21);
        cas(f5, f23);
        cas(f6, f19);
        cas(f11, f14);
        cas(f15, f24);
        cas(f1, f16);
        cas(f3, f17);
        cas(f6, f9);
        cas(f7, f11);
        cas(f13, f19);
        cas(f14, f23);
        cas(f0, f1);
        cas(f2, f16);
        cas(f3, f8);
        cas(f7, f20);
        cas(f10, f13);
        cas(f11, f22);
        cas(f15, f23);
        cas(f1, f2);
        cas(f5, f10);
        cas(f7, f18);
        cas(f11, f21);
        cas(f15, f20);
        cas(f19, f22);
        cas(f4, f7);
        cas(f5, f6);
        cas(f9, f18);
        cas(f10, f17);
        cas(f11, f12);
        cas(f13, f21);
        cas(f14, f15);
        cas(f19, f20);
        cas(f22, f23);
        cas(f3, f4);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f16);
        cas(f12, f17);
        cas(f13, f18);
        cas(f19, f21);
        cas(f20, f22);
        cas(f1, f3);
        cas(f2, f4);
        cas(f5, f11);
        cas(f6, f16);
        cas(f7, f9);
        cas(f8, f10);
        cas(f12, f13);
        cas(f14, f19);
        cas(f15, f18);
        cas(f2, f3);
        cas(f5, f7);
        cas(f6, f9);
        cas(f8, f11);
        cas(f10, f16);
        cas(f12, f14);
        cas(f15, f17);
        cas(f3, f5);
        cas(f4, f6);
        cas(f7, f8);
        cas(f9, f11);
        cas(f10, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f4, f7);
        cas(f6, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f15);
        cas(f14, f16);
        cas(f17, f19);
        cas(f18, f21);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
    }

    /// @notice Sorts an array with 26 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N26L139D14
    function sort26(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f21);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f22, f23);
        cas(f24, f25);
        cas(f0, f24);
        cas(f1, f25);
        cas(f3, f21);
        cas(f4, f22);
        cas(f5, f7);
        cas(f6, f8);
        cas(f9, f11);
        cas(f10, f12);
        cas(f13, f15);
        cas(f14, f16);
        cas(f17, f19);
        cas(f18, f20);
        cas(f0, f4);
        cas(f2, f22);
        cas(f3, f23);
        cas(f5, f9);
        cas(f6, f10);
        cas(f7, f11);
        cas(f8, f12);
        cas(f13, f17);
        cas(f14, f18);
        cas(f15, f19);
        cas(f16, f20);
        cas(f21, f25);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f21);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f8, f16);
        cas(f9, f17);
        cas(f10, f18);
        cas(f11, f19);
        cas(f12, f20);
        cas(f22, f24);
        cas(f23, f25);
        cas(f0, f5);
        cas(f1, f7);
        cas(f2, f4);
        cas(f3, f10);
        cas(f15, f22);
        cas(f18, f24);
        cas(f20, f25);
        cas(f21, f23);
        cas(f2, f9);
        cas(f3, f7);
        cas(f4, f14);
        cas(f5, f13);
        cas(f6, f15);
        cas(f10, f19);
        cas(f11, f21);
        cas(f12, f20);
        cas(f16, f23);
        cas(f18, f22);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f15);
        cas(f7, f17);
        cas(f8, f18);
        cas(f10, f22);
        cas(f11, f13);
        cas(f12, f14);
        cas(f19, f23);
        cas(f20, f24);
        cas(f1, f2);
        cas(f4, f7);
        cas(f5, f11);
        cas(f8, f9);
        cas(f10, f12);
        cas(f13, f15);
        cas(f14, f20);
        cas(f16, f17);
        cas(f18, f21);
        cas(f23, f24);
        cas(f3, f8);
        cas(f4, f6);
        cas(f7, f16);
        cas(f9, f18);
        cas(f10, f13);
        cas(f12, f15);
        cas(f17, f22);
        cas(f19, f21);
        cas(f4, f5);
        cas(f6, f11);
        cas(f7, f9);
        cas(f14, f19);
        cas(f16, f18);
        cas(f20, f21);
        cas(f2, f4);
        cas(f3, f6);
        cas(f7, f10);
        cas(f8, f11);
        cas(f9, f12);
        cas(f13, f16);
        cas(f14, f17);
        cas(f15, f18);
        cas(f19, f22);
        cas(f21, f23);
        cas(f3, f4);
        cas(f5, f8);
        cas(f6, f7);
        cas(f9, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f16);
        cas(f17, f20);
        cas(f18, f19);
        cas(f21, f22);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f11);
        cas(f10, f13);
        cas(f12, f15);
        cas(f14, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
    }

    /// @notice Sorts an array with 27 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N27L147D16
    function sort27(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f21, f22);
        cas(f23, f24);
        cas(f25, f26);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f13);
        cas(f15, f17);
        cas(f16, f18);
        cas(f19, f21);
        cas(f20, f22);
        cas(f23, f25);
        cas(f24, f26);
        cas(f0, f23);
        cas(f1, f24);
        cas(f2, f25);
        cas(f3, f26);
        cas(f4, f8);
        cas(f5, f9);
        cas(f6, f10);
        cas(f7, f11);
        cas(f13, f14);
        cas(f15, f19);
        cas(f16, f20);
        cas(f17, f21);
        cas(f18, f22);
        cas(f0, f4);
        cas(f1, f6);
        cas(f2, f19);
        cas(f3, f20);
        cas(f5, f13);
        cas(f9, f21);
        cas(f11, f14);
        cas(f12, f16);
        cas(f17, f23);
        cas(f18, f24);
        cas(f22, f26);
        cas(f5, f17);
        cas(f6, f16);
        cas(f7, f22);
        cas(f9, f25);
        cas(f10, f24);
        cas(f12, f15);
        cas(f13, f20);
        cas(f14, f26);
        cas(f1, f12);
        cas(f4, f15);
        cas(f7, f23);
        cas(f10, f19);
        cas(f11, f16);
        cas(f13, f18);
        cas(f20, f24);
        cas(f22, f25);
        cas(f0, f1);
        cas(f6, f12);
        cas(f8, f11);
        cas(f9, f15);
        cas(f10, f17);
        cas(f14, f24);
        cas(f16, f21);
        cas(f18, f19);
        cas(f1, f4);
        cas(f2, f8);
        cas(f3, f11);
        cas(f12, f15);
        cas(f14, f20);
        cas(f16, f22);
        cas(f21, f25);
        cas(f2, f5);
        cas(f3, f17);
        cas(f8, f13);
        cas(f11, f23);
        cas(f21, f22);
        cas(f24, f25);
        cas(f1, f2);
        cas(f3, f10);
        cas(f5, f6);
        cas(f7, f13);
        cas(f11, f15);
        cas(f14, f21);
        cas(f18, f23);
        cas(f20, f22);
        cas(f4, f5);
        cas(f6, f9);
        cas(f7, f8);
        cas(f13, f17);
        cas(f14, f16);
        cas(f19, f23);
        cas(f22, f24);
        cas(f2, f4);
        cas(f3, f6);
        cas(f5, f7);
        cas(f8, f12);
        cas(f9, f10);
        cas(f11, f13);
        cas(f14, f18);
        cas(f15, f17);
        cas(f16, f19);
        cas(f21, f23);
        cas(f3, f5);
        cas(f6, f8);
        cas(f7, f9);
        cas(f10, f12);
        cas(f11, f14);
        cas(f13, f16);
        cas(f15, f18);
        cas(f17, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f5, f6);
        cas(f8, f11);
        cas(f9, f10);
        cas(f12, f14);
        cas(f13, f15);
        cas(f17, f18);
        cas(f19, f21);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f20);
        cas(f21, f22);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
    }

    /// @notice Sorts an array with 28 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N28L155D14
    function sort28(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f25, f27);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f14, f18);
        cas(f15, f19);
        cas(f20, f24);
        cas(f21, f25);
        cas(f22, f26);
        cas(f23, f27);
        cas(f0, f20);
        cas(f1, f21);
        cas(f2, f22);
        cas(f3, f23);
        cas(f4, f24);
        cas(f5, f25);
        cas(f6, f26);
        cas(f7, f27);
        cas(f9, f17);
        cas(f10, f18);
        cas(f11, f15);
        cas(f12, f16);
        cas(f1, f2);
        cas(f4, f20);
        cas(f5, f6);
        cas(f7, f23);
        cas(f8, f12);
        cas(f9, f16);
        cas(f10, f14);
        cas(f11, f18);
        cas(f13, f17);
        cas(f15, f19);
        cas(f21, f22);
        cas(f25, f26);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f12);
        cas(f3, f5);
        cas(f4, f10);
        cas(f6, f16);
        cas(f7, f13);
        cas(f11, f21);
        cas(f14, f20);
        cas(f15, f25);
        cas(f17, f23);
        cas(f18, f26);
        cas(f19, f27);
        cas(f22, f24);
        cas(f2, f4);
        cas(f3, f7);
        cas(f5, f17);
        cas(f8, f14);
        cas(f9, f11);
        cas(f10, f22);
        cas(f13, f19);
        cas(f16, f18);
        cas(f20, f24);
        cas(f23, f25);
        cas(f1, f8);
        cas(f3, f9);
        cas(f5, f11);
        cas(f6, f10);
        cas(f7, f15);
        cas(f12, f20);
        cas(f16, f22);
        cas(f17, f21);
        cas(f18, f24);
        cas(f19, f26);
        cas(f1, f2);
        cas(f4, f6);
        cas(f5, f9);
        cas(f10, f16);
        cas(f11, f17);
        cas(f12, f14);
        cas(f13, f15);
        cas(f18, f22);
        cas(f21, f23);
        cas(f25, f26);
        cas(f4, f8);
        cas(f6, f12);
        cas(f7, f11);
        cas(f10, f14);
        cas(f13, f17);
        cas(f15, f21);
        cas(f16, f20);
        cas(f19, f23);
        cas(f2, f4);
        cas(f6, f8);
        cas(f7, f16);
        cas(f9, f14);
        cas(f10, f12);
        cas(f11, f20);
        cas(f13, f18);
        cas(f15, f17);
        cas(f19, f21);
        cas(f23, f25);
        cas(f3, f10);
        cas(f5, f12);
        cas(f7, f9);
        cas(f11, f13);
        cas(f14, f16);
        cas(f15, f22);
        cas(f17, f24);
        cas(f18, f20);
        cas(f3, f6);
        cas(f5, f8);
        cas(f7, f10);
        cas(f9, f12);
        cas(f11, f14);
        cas(f13, f16);
        cas(f15, f18);
        cas(f17, f20);
        cas(f19, f22);
        cas(f21, f24);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f21, f22);
        cas(f23, f24);
    }

    /// @notice Sorts an array with 29 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N29L164D15
    function sort29(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f28);
        cas(f17, f26);
        cas(f18, f25);
        cas(f19, f23);
        cas(f21, f27);
        cas(f22, f24);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f17, f22);
        cas(f18, f19);
        cas(f20, f27);
        cas(f23, f25);
        cas(f24, f26);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f16, f20);
        cas(f17, f18);
        cas(f19, f22);
        cas(f23, f24);
        cas(f25, f26);
        cas(f27, f28);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f16, f18);
        cas(f20, f22);
        cas(f21, f25);
        cas(f24, f27);
        cas(f26, f28);
        cas(f1, f8);
        cas(f2, f24);
        cas(f4, f19);
        cas(f5, f20);
        cas(f6, f21);
        cas(f7, f27);
        cas(f9, f18);
        cas(f10, f23);
        cas(f11, f26);
        cas(f13, f22);
        cas(f14, f25);
        cas(f15, f28);
        cas(f16, f17);
        cas(f0, f6);
        cas(f2, f4);
        cas(f3, f24);
        cas(f5, f10);
        cas(f12, f19);
        cas(f13, f18);
        cas(f14, f21);
        cas(f15, f25);
        cas(f20, f23);
        cas(f26, f27);
        cas(f0, f16);
        cas(f1, f6);
        cas(f3, f12);
        cas(f4, f8);
        cas(f5, f17);
        cas(f7, f24);
        cas(f14, f20);
        cas(f15, f26);
        cas(f18, f21);
        cas(f19, f23);
        cas(f25, f27);
        cas(f1, f5);
        cas(f2, f16);
        cas(f3, f10);
        cas(f6, f9);
        cas(f7, f18);
        cas(f8, f17);
        cas(f11, f19);
        cas(f13, f14);
        cas(f15, f22);
        cas(f21, f23);
        cas(f25, f26);
        cas(f1, f2);
        cas(f3, f5);
        cas(f4, f8);
        cas(f6, f16);
        cas(f7, f11);
        cas(f9, f17);
        cas(f10, f12);
        cas(f14, f20);
        cas(f15, f18);
        cas(f19, f24);
        cas(f22, f27);
        cas(f4, f6);
        cas(f9, f16);
        cas(f10, f13);
        cas(f11, f19);
        cas(f12, f14);
        cas(f20, f21);
        cas(f22, f26);
        cas(f23, f24);
        cas(f2, f4);
        cas(f3, f6);
        cas(f7, f16);
        cas(f8, f9);
        cas(f11, f17);
        cas(f15, f19);
        cas(f18, f23);
        cas(f24, f25);
        cas(f3, f4);
        cas(f5, f9);
        cas(f7, f10);
        cas(f11, f13);
        cas(f12, f16);
        cas(f14, f17);
        cas(f15, f20);
        cas(f19, f21);
        cas(f22, f24);
        cas(f5, f8);
        cas(f6, f7);
        cas(f9, f12);
        cas(f10, f11);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f20);
        cas(f18, f19);
        cas(f21, f23);
        cas(f24, f25);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f15);
        cas(f14, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f21, f22);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
    }

    /// @notice Sorts an array with 30 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N30L172D14
    function sort30(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
        uint256 f29;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
            f29 := add(a, 0x3c0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f28, f29);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f13, f15);
        cas(f14, f16);
        cas(f18, f20);
        cas(f19, f21);
        cas(f22, f24);
        cas(f23, f25);
        cas(f26, f28);
        cas(f27, f29);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f14);
        cas(f9, f17);
        cas(f10, f16);
        cas(f12, f20);
        cas(f13, f19);
        cas(f15, f21);
        cas(f22, f26);
        cas(f23, f27);
        cas(f24, f28);
        cas(f25, f29);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f14);
        cas(f3, f17);
        cas(f4, f10);
        cas(f5, f11);
        cas(f6, f16);
        cas(f12, f26);
        cas(f13, f23);
        cas(f15, f27);
        cas(f18, f24);
        cas(f19, f25);
        cas(f20, f28);
        cas(f21, f29);
        cas(f1, f13);
        cas(f2, f12);
        cas(f3, f15);
        cas(f4, f18);
        cas(f5, f19);
        cas(f6, f20);
        cas(f7, f21);
        cas(f8, f22);
        cas(f9, f23);
        cas(f10, f24);
        cas(f11, f25);
        cas(f14, f26);
        cas(f16, f28);
        cas(f17, f27);
        cas(f0, f4);
        cas(f2, f8);
        cas(f3, f13);
        cas(f5, f9);
        cas(f6, f22);
        cas(f7, f23);
        cas(f10, f12);
        cas(f11, f15);
        cas(f14, f18);
        cas(f16, f26);
        cas(f17, f19);
        cas(f20, f24);
        cas(f21, f27);
        cas(f25, f29);
        cas(f0, f2);
        cas(f1, f14);
        cas(f3, f5);
        cas(f4, f8);
        cas(f9, f13);
        cas(f11, f17);
        cas(f12, f18);
        cas(f15, f28);
        cas(f16, f20);
        cas(f21, f25);
        cas(f24, f26);
        cas(f27, f29);
        cas(f2, f4);
        cas(f5, f9);
        cas(f6, f14);
        cas(f7, f13);
        cas(f8, f10);
        cas(f15, f23);
        cas(f16, f22);
        cas(f19, f21);
        cas(f20, f24);
        cas(f25, f27);
        cas(f6, f8);
        cas(f7, f11);
        cas(f10, f14);
        cas(f12, f16);
        cas(f13, f17);
        cas(f15, f19);
        cas(f18, f22);
        cas(f21, f23);
        cas(f4, f6);
        cas(f7, f9);
        cas(f8, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f16, f18);
        cas(f19, f21);
        cas(f20, f22);
        cas(f23, f25);
        cas(f1, f8);
        cas(f3, f18);
        cas(f5, f20);
        cas(f7, f22);
        cas(f9, f24);
        cas(f10, f12);
        cas(f11, f26);
        cas(f13, f15);
        cas(f14, f16);
        cas(f17, f19);
        cas(f21, f28);
        cas(f1, f2);
        cas(f3, f10);
        cas(f5, f12);
        cas(f7, f14);
        cas(f9, f16);
        cas(f11, f18);
        cas(f13, f20);
        cas(f15, f22);
        cas(f17, f24);
        cas(f19, f26);
        cas(f27, f28);
        cas(f2, f4);
        cas(f3, f6);
        cas(f5, f8);
        cas(f7, f10);
        cas(f9, f12);
        cas(f11, f14);
        cas(f13, f16);
        cas(f15, f18);
        cas(f17, f20);
        cas(f19, f22);
        cas(f21, f24);
        cas(f23, f26);
        cas(f25, f27);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f21, f22);
        cas(f23, f24);
        cas(f25, f26);
    }

    /// @notice Sorts an array with 31 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N31L180D14
    function sort31(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
        uint256 f29;
        uint256 f30;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
            f29 := add(a, 0x3c0)
            f30 := add(a, 0x3e0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f28, f29);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f25, f27);
        cas(f28, f30);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f16, f20);
        cas(f17, f21);
        cas(f18, f22);
        cas(f19, f23);
        cas(f24, f28);
        cas(f25, f29);
        cas(f26, f30);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f16, f24);
        cas(f17, f25);
        cas(f18, f26);
        cas(f19, f27);
        cas(f20, f28);
        cas(f21, f29);
        cas(f22, f30);
        cas(f0, f16);
        cas(f1, f8);
        cas(f2, f4);
        cas(f3, f12);
        cas(f5, f10);
        cas(f6, f9);
        cas(f7, f14);
        cas(f11, f13);
        cas(f17, f24);
        cas(f18, f20);
        cas(f19, f28);
        cas(f21, f26);
        cas(f22, f25);
        cas(f23, f30);
        cas(f27, f29);
        cas(f1, f2);
        cas(f3, f5);
        cas(f4, f8);
        cas(f6, f22);
        cas(f7, f11);
        cas(f9, f25);
        cas(f10, f12);
        cas(f13, f14);
        cas(f17, f18);
        cas(f19, f21);
        cas(f20, f24);
        cas(f23, f27);
        cas(f26, f28);
        cas(f29, f30);
        cas(f1, f17);
        cas(f2, f18);
        cas(f3, f19);
        cas(f4, f20);
        cas(f5, f10);
        cas(f7, f23);
        cas(f8, f24);
        cas(f11, f27);
        cas(f12, f28);
        cas(f13, f29);
        cas(f14, f30);
        cas(f21, f26);
        cas(f3, f17);
        cas(f4, f16);
        cas(f5, f21);
        cas(f6, f18);
        cas(f7, f9);
        cas(f8, f20);
        cas(f10, f26);
        cas(f11, f23);
        cas(f13, f25);
        cas(f14, f28);
        cas(f15, f27);
        cas(f22, f24);
        cas(f1, f4);
        cas(f3, f8);
        cas(f5, f16);
        cas(f7, f17);
        cas(f9, f21);
        cas(f10, f22);
        cas(f11, f19);
        cas(f12, f20);
        cas(f14, f24);
        cas(f15, f26);
        cas(f23, f28);
        cas(f27, f30);
        cas(f2, f5);
        cas(f7, f8);
        cas(f9, f18);
        cas(f11, f17);
        cas(f12, f16);
        cas(f13, f22);
        cas(f14, f20);
        cas(f15, f19);
        cas(f23, f24);
        cas(f26, f29);
        cas(f2, f4);
        cas(f6, f12);
        cas(f9, f16);
        cas(f10, f11);
        cas(f13, f17);
        cas(f14, f18);
        cas(f15, f22);
        cas(f19, f25);
        cas(f20, f21);
        cas(f27, f29);
        cas(f5, f6);
        cas(f8, f12);
        cas(f9, f10);
        cas(f11, f13);
        cas(f14, f16);
        cas(f15, f17);
        cas(f18, f20);
        cas(f19, f23);
        cas(f21, f22);
        cas(f25, f26);
        cas(f3, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f12);
        cas(f11, f14);
        cas(f13, f16);
        cas(f15, f18);
        cas(f17, f20);
        cas(f19, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f28);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f21, f22);
        cas(f23, f24);
        cas(f25, f26);
        cas(f27, f28);
    }

    /// @notice Sorts an array with 32 elements.
    /// @param a The array to sort.
    /// @dev Array length is NOT validated.
    /// Network: https://bertdobbelaere.github.io/sorting_networks.html#N32L185D14
    function sort32(uint256[] memory a) internal pure {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
        uint256 f29;
        uint256 f30;
        uint256 f31;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
            f29 := add(a, 0x3c0)
            f30 := add(a, 0x3e0)
            f31 := add(a, 0x400)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f28, f29);
        cas(f30, f31);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f25, f27);
        cas(f28, f30);
        cas(f29, f31);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f16, f20);
        cas(f17, f21);
        cas(f18, f22);
        cas(f19, f23);
        cas(f24, f28);
        cas(f25, f29);
        cas(f26, f30);
        cas(f27, f31);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f16, f24);
        cas(f17, f25);
        cas(f18, f26);
        cas(f19, f27);
        cas(f20, f28);
        cas(f21, f29);
        cas(f22, f30);
        cas(f23, f31);
        cas(f0, f16);
        cas(f1, f8);
        cas(f2, f4);
        cas(f3, f12);
        cas(f5, f10);
        cas(f6, f9);
        cas(f7, f14);
        cas(f11, f13);
        cas(f15, f31);
        cas(f17, f24);
        cas(f18, f20);
        cas(f19, f28);
        cas(f21, f26);
        cas(f22, f25);
        cas(f23, f30);
        cas(f27, f29);
        cas(f1, f2);
        cas(f3, f5);
        cas(f4, f8);
        cas(f6, f22);
        cas(f7, f11);
        cas(f9, f25);
        cas(f10, f12);
        cas(f13, f14);
        cas(f17, f18);
        cas(f19, f21);
        cas(f20, f24);
        cas(f23, f27);
        cas(f26, f28);
        cas(f29, f30);
        cas(f1, f17);
        cas(f2, f18);
        cas(f3, f19);
        cas(f4, f20);
        cas(f5, f10);
        cas(f7, f23);
        cas(f8, f24);
        cas(f11, f27);
        cas(f12, f28);
        cas(f13, f29);
        cas(f14, f30);
        cas(f21, f26);
        cas(f3, f17);
        cas(f4, f16);
        cas(f5, f21);
        cas(f6, f18);
        cas(f7, f9);
        cas(f8, f20);
        cas(f10, f26);
        cas(f11, f23);
        cas(f13, f25);
        cas(f14, f28);
        cas(f15, f27);
        cas(f22, f24);
        cas(f1, f4);
        cas(f3, f8);
        cas(f5, f16);
        cas(f7, f17);
        cas(f9, f21);
        cas(f10, f22);
        cas(f11, f19);
        cas(f12, f20);
        cas(f14, f24);
        cas(f15, f26);
        cas(f23, f28);
        cas(f27, f30);
        cas(f2, f5);
        cas(f7, f8);
        cas(f9, f18);
        cas(f11, f17);
        cas(f12, f16);
        cas(f13, f22);
        cas(f14, f20);
        cas(f15, f19);
        cas(f23, f24);
        cas(f26, f29);
        cas(f2, f4);
        cas(f6, f12);
        cas(f9, f16);
        cas(f10, f11);
        cas(f13, f17);
        cas(f14, f18);
        cas(f15, f22);
        cas(f19, f25);
        cas(f20, f21);
        cas(f27, f29);
        cas(f5, f6);
        cas(f8, f12);
        cas(f9, f10);
        cas(f11, f13);
        cas(f14, f16);
        cas(f15, f17);
        cas(f18, f20);
        cas(f19, f23);
        cas(f21, f22);
        cas(f25, f26);
        cas(f3, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f12);
        cas(f11, f14);
        cas(f13, f16);
        cas(f15, f18);
        cas(f17, f20);
        cas(f19, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f28);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f21, f22);
        cas(f23, f24);
        cas(f25, f26);
        cas(f27, f28);
    }


    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                 MEDIAN SELECTION NETWORKS                  */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Returns the median of an array with 3 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N3L3D3
    /// @return m The median of the array.
    function median3(uint256[] memory a) internal pure returns (uint256 m) {
        uint256 f0;
        uint256 f1;
        uint256 f2;
        /// @solidity memory-safe-assembly
        assembly {
            f0 := add(a, 0x20)
            f1 := add(a, 0x40)
            f2 := add(a, 0x60)
        }
        cas(f0, f1);
        cas(f1, f2);
        m = cas_ret1(f0, f1);
    }

    /// @notice Returns the median of an array with 4 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N4L4D2
    /// @return m The median of the array.
    function median4(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f1);
        cas(f2, f3);
        uint256 m0 = cas_ret1(f0, f2);
        uint256 m1 = cas_ret0(f1, f3);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 5 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N5L7D5
    /// @return m The median of the array.
    function median5(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f1);
        cas(f2, f3);
        cas(f0, f2);
        cas(f1, f3);
        cas(f2, f4);
        cas(f1, f2);
        m = cas_ret0(f2, f4);
    }

    /// @notice Returns the median of an array with 6 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N6L10D4
    /// @return m The median of the array.
    function median6(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f1);
        cas(f4, f5);
        cas(f0, f5);
        cas(f1, f3);
        cas(f2, f4);
        cas(f0, f2);
        cas(f1, f4);
        cas(f3, f5);
        uint256 m0 = cas_ret1(f1, f2);
        uint256 m1 = cas_ret0(f3, f4);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 7 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N7L13D6
    /// @return m The median of the array.
    function median7(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f1, f2);
        cas(f3, f4);
        cas(f0, f2);
        cas(f1, f4);
        cas(f3, f5);
        cas(f0, f1);
        cas(f2, f5);
        cas(f4, f6);
        cas(f1, f3);
        cas(f2, f4);
        cas(f3, f4);
        m = cas_ret1(f2, f3);
    }

    /// @notice Returns the median of an array with 8 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N8L16D5
    /// @return m The median of the array.
    function median8(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f2, f4);
        cas(f3, f5);
        cas(f6, f7);
        cas(f2, f3);
        cas(f4, f5);
        uint256 m0 = cas_ret1(f1, f4);
        uint256 m1 = cas_ret0(f3, f6);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 9 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N9L19D7
    /// @return m The median of the array.
    function median9(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f7);
        cas(f1, f2);
        cas(f3, f5);
        cas(f4, f8);
        cas(f0, f2);
        cas(f1, f5);
        cas(f3, f8);
        cas(f4, f7);
        cas(f0, f3);
        cas(f1, f4);
        cas(f2, f8);
        cas(f5, f7);
        cas(f3, f4);
        cas(f5, f6);
        cas(f2, f5);
        cas(f4, f6);
        cas(f2, f3);
        cas(f4, f5);
        m = cas_ret1(f3, f4);
    }

    /// @notice Returns the median of an array with 10 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N10L22D8
    /// @return m The median of the array.
    function median10(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f1);
        cas(f3, f5);
        cas(f4, f6);
        cas(f8, f9);
        cas(f0, f3);
        cas(f1, f5);
        cas(f4, f8);
        cas(f6, f9);
        cas(f1, f3);
        cas(f6, f8);
        cas(f0, f6);
        cas(f1, f4);
        cas(f3, f9);
        cas(f5, f8);
        cas(f2, f6);
        cas(f3, f7);
        cas(f2, f3);
        cas(f6, f7);
        cas(f3, f4);
        cas(f5, f6);
        uint256 m0 = cas_ret1(f3, f5);
        uint256 m1 = cas_ret0(f4, f6);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 11 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N11L25D11
    /// @return m The median of the array.
    function median11(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f1, f2);
        cas(f5, f6);
        cas(f0, f5);
        cas(f1, f4);
        cas(f2, f7);
        cas(f3, f6);
        cas(f2, f5);
        cas(f3, f4);
        cas(f2, f8);
        cas(f4, f9);
        cas(f8, f10);
        cas(f3, f8);
        cas(f5, f10);
        cas(f4, f5);
        cas(f4, f8);
        m = cas_ret0(f5, f8);
    }

    /// @notice Returns the median of an array with 12 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N12L29D7
    /// @return m The median of the array.
    function median12(uint256[] memory a) internal pure returns (uint256 m) {
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
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f0, f4);
        cas(f1, f10);
        cas(f2, f9);
        cas(f5, f6);
        cas(f7, f11);
        cas(f2, f6);
        cas(f3, f7);
        cas(f4, f8);
        cas(f5, f9);
        cas(f1, f5);
        cas(f2, f8);
        cas(f3, f9);
        cas(f6, f10);
        cas(f3, f5);
        cas(f6, f8);
        uint256 m0 = cas_ret1(f3, f6);
        uint256 m1 = cas_ret0(f5, f8);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 13 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N13L32D10
    /// @return m The median of the array.
    function median13(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
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
            f12 := add(a, 0x1a0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f4);
        cas(f3, f5);
        cas(f6, f10);
        cas(f7, f11);
        cas(f0, f6);
        cas(f1, f7);
        cas(f3, f4);
        cas(f8, f10);
        cas(f9, f11);
        cas(f2, f6);
        cas(f3, f10);
        cas(f4, f8);
        cas(f5, f9);
        cas(f1, f3);
        cas(f4, f6);
        cas(f7, f8);
        cas(f3, f12);
        cas(f5, f6);
        cas(f3, f5);
        cas(f6, f12);
        cas(f5, f7);
        cas(f6, f10);
        cas(f5, f6);
        m = cas_ret0(f6, f7);
    }

    /// @notice Returns the median of an array with 14 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N14L38D10
    /// @return m The median of the array.
    function median14(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f0, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f13);
        cas(f0, f12);
        cas(f1, f13);
        cas(f4, f6);
        cas(f7, f9);
        cas(f0, f4);
        cas(f1, f10);
        cas(f3, f12);
        cas(f5, f7);
        cas(f6, f8);
        cas(f9, f13);
        cas(f1, f8);
        cas(f2, f4);
        cas(f5, f12);
        cas(f9, f11);
        cas(f1, f5);
        cas(f3, f4);
        cas(f8, f12);
        cas(f9, f10);
        cas(f3, f5);
        cas(f4, f9);
        cas(f8, f10);
        cas(f4, f6);
        cas(f7, f9);
        cas(f5, f7);
        cas(f6, f8);
        uint256 m0 = cas_ret1(f5, f6);
        uint256 m1 = cas_ret0(f7, f8);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 15 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N15L41D12
    /// @return m The median of the array.
    function median15(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f0, f12);
        cas(f1, f13);
        cas(f2, f8);
        cas(f3, f9);
        cas(f10, f14);
        cas(f3, f11);
        cas(f10, f12);
        cas(f2, f10);
        cas(f3, f6);
        cas(f5, f11);
        cas(f7, f12);
        cas(f0, f3);
        cas(f4, f10);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f12);
        cas(f1, f5);
        cas(f3, f10);
        cas(f6, f13);
        cas(f8, f11);
        cas(f1, f3);
        cas(f5, f8);
        cas(f6, f10);
        cas(f3, f7);
        cas(f5, f14);
        cas(f6, f9);
        cas(f4, f7);
        cas(f5, f6);
        cas(f8, f14);
        cas(f9, f10);
        cas(f6, f7);
        cas(f8, f9);
        cas(f6, f8);
        m = cas_ret0(f7, f8);
    }

    /// @notice Returns the median of an array with 16 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N16L46D10
    /// @return m The median of the array.
    function median16(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f0, f6);
        cas(f2, f4);
        cas(f9, f15);
        cas(f11, f13);
        cas(f4, f9);
        cas(f6, f11);
        cas(f1, f9);
        cas(f3, f11);
        cas(f4, f12);
        cas(f6, f14);
        cas(f0, f4);
        cas(f1, f10);
        cas(f2, f6);
        cas(f3, f8);
        cas(f5, f14);
        cas(f7, f12);
        cas(f9, f13);
        cas(f11, f15);
        cas(f1, f12);
        cas(f3, f14);
        cas(f4, f7);
        cas(f5, f6);
        cas(f8, f11);
        cas(f9, f10);
        cas(f1, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f14);
        cas(f3, f5);
        cas(f6, f8);
        cas(f7, f9);
        cas(f10, f12);
        cas(f5, f8);
        cas(f7, f10);
        uint256 m0 = cas_ret1(f5, f7);
        uint256 m1 = cas_ret0(f8, f10);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 17 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N17L49D12
    /// @return m The median of the array.
    function median17(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f1, f2);
        cas(f5, f13);
        cas(f6, f14);
        cas(f9, f10);
        cas(f1, f9);
        cas(f2, f10);
        cas(f5, f6);
        cas(f13, f14);
        cas(f1, f4);
        cas(f2, f13);
        cas(f5, f8);
        cas(f6, f9);
        cas(f7, f10);
        cas(f11, f14);
        cas(f2, f6);
        cas(f4, f7);
        cas(f8, f11);
        cas(f9, f13);
        cas(f0, f8);
        cas(f3, f11);
        cas(f4, f12);
        cas(f7, f15);
        cas(f9, f16);
        cas(f3, f8);
        cas(f6, f9);
        cas(f7, f12);
        cas(f3, f7);
        cas(f8, f16);
        cas(f7, f9);
        cas(f8, f12);
        cas(f6, f7);
        cas(f8, f9);
        m = cas_ret1(f7, f8);
    }

    /// @notice Returns the median of an array with 18 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N18L55D12
    /// @return m The median of the array.
    function median18(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
        }
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f0, f2);
        cas(f3, f5);
        cas(f4, f6);
        cas(f7, f9);
        cas(f8, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f14);
        cas(f3, f15);
        cas(f12, f16);
        cas(f13, f17);
        cas(f0, f13);
        cas(f1, f12);
        cas(f2, f6);
        cas(f4, f17);
        cas(f5, f16);
        cas(f11, f15);
        cas(f0, f1);
        cas(f4, f12);
        cas(f5, f13);
        cas(f16, f17);
        cas(f4, f13);
        cas(f5, f9);
        cas(f8, f12);
        cas(f4, f7);
        cas(f5, f11);
        cas(f6, f12);
        cas(f10, f13);
        cas(f1, f11);
        cas(f6, f16);
        cas(f7, f8);
        cas(f9, f10);
        cas(f2, f8);
        cas(f6, f10);
        cas(f7, f11);
        cas(f9, f15);
        cas(f2, f9);
        cas(f3, f11);
        cas(f6, f14);
        cas(f8, f15);
        cas(f6, f9);
        cas(f8, f11);
        uint256 m0 = cas_ret1(f6, f8);
        uint256 m1 = cas_ret0(f9, f11);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 19 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N19L58D15
    /// @return m The median of the array.
    function median19(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
        }
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f0, f2);
        cas(f3, f5);
        cas(f4, f6);
        cas(f7, f9);
        cas(f8, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f14);
        cas(f3, f15);
        cas(f12, f16);
        cas(f13, f17);
        cas(f0, f13);
        cas(f1, f12);
        cas(f2, f6);
        cas(f4, f17);
        cas(f5, f16);
        cas(f11, f15);
        cas(f0, f1);
        cas(f4, f12);
        cas(f5, f13);
        cas(f16, f17);
        cas(f4, f13);
        cas(f5, f9);
        cas(f8, f12);
        cas(f4, f7);
        cas(f5, f11);
        cas(f6, f12);
        cas(f10, f13);
        cas(f1, f11);
        cas(f6, f16);
        cas(f7, f8);
        cas(f9, f10);
        cas(f2, f8);
        cas(f6, f10);
        cas(f7, f11);
        cas(f9, f15);
        cas(f2, f9);
        cas(f3, f11);
        cas(f6, f14);
        cas(f8, f15);
        cas(f6, f9);
        cas(f8, f11);
        cas(f6, f8);
        cas(f9, f11);
        cas(f8, f9);
        cas(f9, f18);
        m = cas_ret1(f8, f9);
    }

    /// @notice Returns the median of an array with 20 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N20L63D12
    /// @return m The median of the array.
    function median20(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f15);
        cas(f4, f16);
        cas(f13, f17);
        cas(f14, f18);
        cas(f1, f14);
        cas(f2, f13);
        cas(f3, f7);
        cas(f5, f18);
        cas(f6, f17);
        cas(f12, f16);
        cas(f0, f16);
        cas(f1, f2);
        cas(f3, f19);
        cas(f5, f13);
        cas(f6, f14);
        cas(f17, f18);
        cas(f0, f4);
        cas(f5, f14);
        cas(f6, f10);
        cas(f9, f13);
        cas(f15, f19);
        cas(f5, f8);
        cas(f6, f12);
        cas(f7, f13);
        cas(f11, f14);
        cas(f2, f12);
        cas(f7, f17);
        cas(f8, f9);
        cas(f10, f11);
        cas(f3, f9);
        cas(f7, f11);
        cas(f8, f12);
        cas(f10, f16);
        cas(f3, f10);
        cas(f4, f12);
        cas(f7, f15);
        cas(f9, f16);
        cas(f7, f10);
        cas(f9, f12);
        uint256 m0 = cas_ret1(f7, f9);
        uint256 m1 = cas_ret0(f10, f12);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 21 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N21L66D15
    /// @return m The median of the array.
    function median21(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f15);
        cas(f4, f16);
        cas(f13, f17);
        cas(f14, f18);
        cas(f1, f14);
        cas(f2, f13);
        cas(f3, f7);
        cas(f5, f18);
        cas(f6, f17);
        cas(f12, f16);
        cas(f0, f16);
        cas(f1, f2);
        cas(f3, f19);
        cas(f5, f13);
        cas(f6, f14);
        cas(f17, f18);
        cas(f0, f4);
        cas(f5, f14);
        cas(f6, f10);
        cas(f9, f13);
        cas(f15, f19);
        cas(f5, f8);
        cas(f6, f12);
        cas(f7, f13);
        cas(f11, f14);
        cas(f2, f12);
        cas(f7, f17);
        cas(f8, f9);
        cas(f10, f11);
        cas(f3, f9);
        cas(f7, f11);
        cas(f8, f12);
        cas(f10, f16);
        cas(f3, f10);
        cas(f4, f12);
        cas(f7, f15);
        cas(f9, f16);
        cas(f7, f10);
        cas(f9, f12);
        cas(f7, f9);
        cas(f10, f12);
        cas(f9, f10);
        cas(f10, f20);
        m = cas_ret1(f9, f10);
    }

    /// @notice Returns the median of an array with 22 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N22L74D14
    /// @return m The median of the array.
    function median22(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f13);
        cas(f14, f16);
        cas(f15, f17);
        cas(f18, f20);
        cas(f19, f21);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f14, f18);
        cas(f15, f19);
        cas(f16, f20);
        cas(f17, f21);
        cas(f0, f14);
        cas(f1, f15);
        cas(f2, f16);
        cas(f3, f17);
        cas(f4, f18);
        cas(f5, f19);
        cas(f6, f20);
        cas(f7, f21);
        cas(f3, f8);
        cas(f13, f18);
        cas(f3, f14);
        cas(f7, f18);
        cas(f8, f11);
        cas(f10, f13);
        cas(f1, f10);
        cas(f8, f12);
        cas(f9, f13);
        cas(f11, f20);
        cas(f4, f8);
        cas(f5, f9);
        cas(f6, f10);
        cas(f11, f15);
        cas(f12, f16);
        cas(f13, f17);
        cas(f2, f5);
        cas(f6, f14);
        cas(f7, f15);
        cas(f8, f11);
        cas(f10, f13);
        cas(f16, f19);
        cas(f5, f11);
        cas(f7, f9);
        cas(f10, f16);
        cas(f12, f14);
        cas(f5, f8);
        cas(f7, f10);
        cas(f11, f14);
        cas(f13, f16);
        cas(f7, f11);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f9, f11);
        cas(f10, f12);
        uint256 m0 = cas_ret1(f9, f10);
        uint256 m1 = cas_ret0(f11, f12);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 23 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N23L77D16
    /// @return m The median of the array.
    function median23(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
        }
        cas(f1, f2);
        cas(f3, f4);
        cas(f5, f6);
        cas(f7, f8);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        cas(f17, f18);
        cas(f19, f20);
        cas(f0, f2);
        cas(f3, f5);
        cas(f4, f6);
        cas(f7, f9);
        cas(f8, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f16, f18);
        cas(f19, f21);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f7, f11);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f15, f19);
        cas(f16, f20);
        cas(f17, f21);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f2, f18);
        cas(f4, f20);
        cas(f5, f21);
        cas(f8, f16);
        cas(f9, f17);
        cas(f11, f19);
        cas(f0, f11);
        cas(f1, f8);
        cas(f2, f4);
        cas(f3, f9);
        cas(f10, f20);
        cas(f12, f21);
        cas(f13, f18);
        cas(f17, f19);
        cas(f8, f9);
        cas(f10, f12);
        cas(f6, f12);
        cas(f9, f11);
        cas(f10, f13);
        cas(f4, f10);
        cas(f9, f15);
        cas(f11, f17);
        cas(f2, f11);
        cas(f8, f15);
        cas(f10, f19);
        cas(f13, f17);
        cas(f4, f15);
        cas(f5, f11);
        cas(f6, f13);
        cas(f10, f16);
        cas(f6, f15);
        cas(f10, f22);
        cas(f11, f16);
        cas(f6, f10);
        cas(f15, f22);
        cas(f5, f10);
        cas(f11, f15);
        cas(f10, f11);
        m = cas_ret0(f11, f15);
    }

    /// @notice Returns the median of an array with 24 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N24L82D14
    /// @return m The median of the array.
    function median24(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f16, f20);
        cas(f17, f21);
        cas(f18, f22);
        cas(f19, f23);
        cas(f0, f8);
        cas(f3, f14);
        cas(f5, f13);
        cas(f6, f11);
        cas(f9, f20);
        cas(f10, f18);
        cas(f12, f17);
        cas(f15, f23);
        cas(f1, f17);
        cas(f2, f20);
        cas(f3, f21);
        cas(f4, f18);
        cas(f5, f19);
        cas(f6, f22);
        cas(f7, f15);
        cas(f8, f16);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f5);
        cas(f4, f12);
        cas(f11, f19);
        cas(f13, f21);
        cas(f14, f22);
        cas(f18, f20);
        cas(f9, f10);
        cas(f13, f14);
        cas(f10, f12);
        cas(f11, f13);
        cas(f6, f12);
        cas(f9, f10);
        cas(f11, f17);
        cas(f13, f14);
        cas(f5, f12);
        cas(f6, f16);
        cas(f7, f17);
        cas(f11, f18);
        cas(f3, f16);
        cas(f5, f11);
        cas(f7, f20);
        cas(f12, f18);
        cas(f7, f11);
        cas(f12, f16);
        cas(f7, f10);
        cas(f13, f16);
        uint256 m0 = cas_ret1(f10, f12);
        uint256 m1 = cas_ret0(f11, f13);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 25 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N25L85D16
    /// @return m The median of the array.
    function median25(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f16, f20);
        cas(f17, f21);
        cas(f18, f22);
        cas(f19, f23);
        cas(f0, f8);
        cas(f1, f9);
        cas(f2, f10);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f13);
        cas(f6, f14);
        cas(f7, f15);
        cas(f3, f19);
        cas(f5, f21);
        cas(f6, f22);
        cas(f7, f23);
        cas(f8, f16);
        cas(f9, f17);
        cas(f10, f18);
        cas(f12, f20);
        cas(f1, f12);
        cas(f2, f9);
        cas(f3, f5);
        cas(f4, f10);
        cas(f11, f21);
        cas(f13, f22);
        cas(f14, f19);
        cas(f18, f20);
        cas(f9, f10);
        cas(f11, f13);
        cas(f7, f13);
        cas(f10, f12);
        cas(f11, f14);
        cas(f5, f11);
        cas(f10, f16);
        cas(f12, f18);
        cas(f3, f12);
        cas(f9, f16);
        cas(f11, f20);
        cas(f14, f18);
        cas(f5, f16);
        cas(f6, f12);
        cas(f7, f14);
        cas(f11, f17);
        cas(f7, f16);
        cas(f11, f24);
        cas(f12, f17);
        cas(f7, f11);
        cas(f16, f24);
        cas(f6, f11);
        cas(f12, f16);
        cas(f11, f12);
        m = cas_ret0(f12, f16);
    }

    /// @notice Returns the median of an array with 26 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N26L104D12
    /// @return m The median of the array.
    function median26(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f14, f16);
        cas(f15, f17);
        cas(f18, f20);
        cas(f19, f21);
        cas(f22, f24);
        cas(f23, f25);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f14);
        cas(f9, f16);
        cas(f10, f13);
        cas(f11, f17);
        cas(f12, f15);
        cas(f18, f22);
        cas(f19, f23);
        cas(f20, f24);
        cas(f21, f25);
        cas(f0, f18);
        cas(f1, f19);
        cas(f2, f20);
        cas(f3, f21);
        cas(f4, f22);
        cas(f5, f23);
        cas(f6, f24);
        cas(f7, f25);
        cas(f9, f12);
        cas(f10, f14);
        cas(f11, f15);
        cas(f13, f16);
        cas(f1, f18);
        cas(f2, f10);
        cas(f3, f20);
        cas(f4, f8);
        cas(f5, f22);
        cas(f6, f14);
        cas(f7, f24);
        cas(f11, f19);
        cas(f15, f23);
        cas(f17, f21);
        cas(f1, f9);
        cas(f3, f13);
        cas(f5, f15);
        cas(f6, f18);
        cas(f7, f19);
        cas(f8, f11);
        cas(f10, f20);
        cas(f12, f22);
        cas(f14, f17);
        cas(f16, f24);
        cas(f2, f6);
        cas(f3, f11);
        cas(f5, f9);
        cas(f7, f17);
        cas(f8, f18);
        cas(f10, f12);
        cas(f13, f15);
        cas(f14, f22);
        cas(f16, f20);
        cas(f19, f23);
        cas(f3, f10);
        cas(f7, f13);
        cas(f9, f14);
        cas(f11, f16);
        cas(f12, f18);
        cas(f15, f22);
        cas(f5, f10);
        cas(f7, f12);
        cas(f9, f11);
        cas(f13, f18);
        cas(f14, f16);
        cas(f15, f20);
        cas(f6, f10);
        cas(f7, f9);
        cas(f11, f13);
        cas(f12, f14);
        cas(f15, f19);
        cas(f16, f18);
        cas(f9, f10);
        cas(f11, f12);
        cas(f13, f14);
        cas(f15, f16);
        uint256 m0 = cas_ret1(f10, f12);
        uint256 m1 = cas_ret0(f13, f15);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 27 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N27L102D14
    /// @return m The median of the array.
    function median27(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f0, f16);
        cas(f1, f25);
        cas(f2, f26);
        cas(f3, f11);
        cas(f4, f12);
        cas(f5, f9);
        cas(f6, f10);
        cas(f7, f19);
        cas(f8, f20);
        cas(f15, f23);
        cas(f17, f21);
        cas(f18, f22);
        cas(f1, f13);
        cas(f5, f18);
        cas(f6, f17);
        cas(f7, f15);
        cas(f9, f22);
        cas(f10, f21);
        cas(f11, f19);
        cas(f12, f20);
        cas(f14, f26);
        cas(f16, f24);
        cas(f0, f12);
        cas(f1, f10);
        cas(f2, f9);
        cas(f3, f7);
        cas(f6, f14);
        cas(f8, f16);
        cas(f11, f23);
        cas(f13, f21);
        cas(f17, f26);
        cas(f18, f25);
        cas(f20, f24);
        cas(f1, f5);
        cas(f3, f20);
        cas(f4, f16);
        cas(f6, f12);
        cas(f7, f24);
        cas(f10, f14);
        cas(f13, f17);
        cas(f15, f21);
        cas(f22, f26);
        cas(f2, f13);
        cas(f7, f11);
        cas(f9, f17);
        cas(f10, f18);
        cas(f14, f25);
        cas(f16, f20);
        cas(f3, f16);
        cas(f5, f13);
        cas(f7, f15);
        cas(f9, f18);
        cas(f11, f24);
        cas(f12, f20);
        cas(f14, f22);
        cas(f2, f16);
        cas(f5, f12);
        cas(f7, f9);
        cas(f11, f25);
        cas(f15, f22);
        cas(f18, f20);
        cas(f7, f16);
        cas(f9, f13);
        cas(f10, f12);
        cas(f11, f20);
        cas(f14, f18);
        cas(f15, f17);
        cas(f9, f14);
        cas(f11, f15);
        cas(f12, f16);
        cas(f13, f18);
        cas(f11, f13);
        cas(f14, f16);
        cas(f11, f14);
        cas(f13, f16);
        m = cas_ret0(f13, f14);
    }

    /// @notice Returns the median of an array with 28 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N28L104D14
    /// @return m The median of the array.
    function median28(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f25, f27);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f16);
        cas(f9, f17);
        cas(f10, f18);
        cas(f11, f19);
        cas(f20, f24);
        cas(f21, f25);
        cas(f22, f26);
        cas(f23, f27);
        cas(f0, f20);
        cas(f1, f21);
        cas(f2, f22);
        cas(f3, f23);
        cas(f4, f24);
        cas(f5, f25);
        cas(f6, f26);
        cas(f7, f27);
        cas(f10, f12);
        cas(f15, f17);
        cas(f1, f10);
        cas(f3, f13);
        cas(f6, f15);
        cas(f7, f19);
        cas(f8, f20);
        cas(f12, f21);
        cas(f14, f24);
        cas(f17, f26);
        cas(f3, f16);
        cas(f7, f17);
        cas(f9, f14);
        cas(f10, f20);
        cas(f11, f24);
        cas(f13, f18);
        cas(f2, f9);
        cas(f3, f4);
        cas(f5, f16);
        cas(f6, f20);
        cas(f7, f21);
        cas(f10, f12);
        cas(f11, f22);
        cas(f15, f17);
        cas(f18, f25);
        cas(f23, f24);
        cas(f4, f9);
        cas(f5, f11);
        cas(f6, f12);
        cas(f7, f14);
        cas(f13, f20);
        cas(f15, f21);
        cas(f16, f22);
        cas(f18, f23);
        cas(f4, f7);
        cas(f5, f13);
        cas(f9, f12);
        cas(f14, f22);
        cas(f15, f18);
        cas(f20, f23);
        cas(f9, f13);
        cas(f11, f12);
        cas(f14, f18);
        cas(f15, f16);
        cas(f7, f13);
        cas(f11, f15);
        cas(f12, f16);
        cas(f14, f20);
        cas(f7, f15);
        cas(f11, f14);
        cas(f12, f20);
        cas(f13, f16);
        cas(f12, f13);
        cas(f14, f15);
        uint256 m0 = cas_ret1(f12, f14);
        uint256 m1 = cas_ret0(f13, f15);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 29 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N29L107D17
    /// @return m The median of the array.
    function median29(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f25, f27);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f16);
        cas(f9, f17);
        cas(f10, f18);
        cas(f11, f19);
        cas(f20, f24);
        cas(f21, f25);
        cas(f22, f26);
        cas(f23, f27);
        cas(f0, f20);
        cas(f1, f21);
        cas(f2, f22);
        cas(f3, f23);
        cas(f4, f24);
        cas(f5, f25);
        cas(f6, f26);
        cas(f7, f27);
        cas(f10, f12);
        cas(f15, f17);
        cas(f1, f10);
        cas(f3, f13);
        cas(f6, f15);
        cas(f7, f19);
        cas(f8, f20);
        cas(f12, f21);
        cas(f14, f24);
        cas(f17, f26);
        cas(f3, f16);
        cas(f7, f17);
        cas(f9, f14);
        cas(f10, f20);
        cas(f11, f24);
        cas(f13, f18);
        cas(f2, f9);
        cas(f3, f4);
        cas(f5, f16);
        cas(f6, f20);
        cas(f7, f21);
        cas(f10, f12);
        cas(f11, f22);
        cas(f15, f17);
        cas(f18, f25);
        cas(f23, f24);
        cas(f4, f9);
        cas(f5, f11);
        cas(f6, f12);
        cas(f7, f14);
        cas(f13, f20);
        cas(f15, f21);
        cas(f16, f22);
        cas(f18, f23);
        cas(f4, f7);
        cas(f5, f13);
        cas(f9, f12);
        cas(f14, f22);
        cas(f15, f18);
        cas(f20, f23);
        cas(f9, f13);
        cas(f11, f12);
        cas(f14, f18);
        cas(f15, f16);
        cas(f7, f13);
        cas(f11, f15);
        cas(f12, f16);
        cas(f14, f20);
        cas(f7, f15);
        cas(f11, f14);
        cas(f12, f20);
        cas(f13, f16);
        cas(f12, f13);
        cas(f14, f15);
        cas(f12, f14);
        cas(f13, f15);
        cas(f13, f14);
        cas(f14, f28);
        m = cas_ret1(f13, f14);
    }

    /// @notice Returns the median of an array with 30 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N30L118D16
    /// @return m The median of the array.
    function median30(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
        uint256 f29;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
            f29 := add(a, 0x3c0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f28, f29);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f16);
        cas(f13, f17);
        cas(f18, f20);
        cas(f19, f21);
        cas(f22, f24);
        cas(f23, f25);
        cas(f26, f28);
        cas(f27, f29);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f18);
        cas(f10, f19);
        cas(f11, f21);
        cas(f22, f26);
        cas(f23, f27);
        cas(f24, f28);
        cas(f25, f29);
        cas(f1, f10);
        cas(f2, f16);
        cas(f11, f17);
        cas(f12, f18);
        cas(f13, f27);
        cas(f19, f28);
        cas(f1, f13);
        cas(f2, f24);
        cas(f5, f27);
        cas(f6, f19);
        cas(f10, f23);
        cas(f11, f14);
        cas(f15, f18);
        cas(f16, f28);
        cas(f1, f22);
        cas(f2, f8);
        cas(f3, f18);
        cas(f4, f15);
        cas(f5, f9);
        cas(f6, f10);
        cas(f7, f28);
        cas(f11, f26);
        cas(f14, f25);
        cas(f19, f23);
        cas(f20, f24);
        cas(f21, f27);
        cas(f0, f11);
        cas(f3, f14);
        cas(f4, f22);
        cas(f5, f20);
        cas(f6, f12);
        cas(f7, f25);
        cas(f9, f24);
        cas(f10, f13);
        cas(f15, f26);
        cas(f16, f19);
        cas(f17, f23);
        cas(f18, f29);
        cas(f3, f15);
        cas(f7, f18);
        cas(f8, f12);
        cas(f10, f16);
        cas(f11, f22);
        cas(f13, f19);
        cas(f14, f26);
        cas(f17, f21);
        cas(f3, f5);
        cas(f7, f21);
        cas(f8, f22);
        cas(f9, f16);
        cas(f11, f12);
        cas(f13, f20);
        cas(f17, f18);
        cas(f24, f26);
        cas(f5, f10);
        cas(f7, f17);
        cas(f9, f14);
        cas(f12, f22);
        cas(f15, f20);
        cas(f19, f24);
        cas(f10, f12);
        cas(f13, f15);
        cas(f14, f16);
        cas(f17, f19);
        cas(f7, f12);
        cas(f17, f22);
        cas(f7, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f16, f22);
        cas(f9, f13);
        cas(f12, f15);
        cas(f14, f17);
        cas(f16, f20);
        cas(f13, f15);
        cas(f14, f16);
        uint256 m0 = cas_ret1(f13, f14);
        uint256 m1 = cas_ret0(f15, f16);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }

    /// @notice Returns the median of an array with 31 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N31L121D19
    /// @return m The median of the array.
    function median31(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
        uint256 f29;
        uint256 f30;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
            f29 := add(a, 0x3c0)
            f30 := add(a, 0x3e0)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f28, f29);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f16);
        cas(f13, f17);
        cas(f18, f20);
        cas(f19, f21);
        cas(f22, f24);
        cas(f23, f25);
        cas(f26, f28);
        cas(f27, f29);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f18);
        cas(f10, f19);
        cas(f11, f21);
        cas(f22, f26);
        cas(f23, f27);
        cas(f24, f28);
        cas(f25, f29);
        cas(f1, f10);
        cas(f2, f16);
        cas(f11, f17);
        cas(f12, f18);
        cas(f13, f27);
        cas(f19, f28);
        cas(f1, f13);
        cas(f2, f24);
        cas(f5, f27);
        cas(f6, f19);
        cas(f10, f23);
        cas(f11, f14);
        cas(f15, f18);
        cas(f16, f28);
        cas(f1, f22);
        cas(f2, f8);
        cas(f3, f18);
        cas(f4, f15);
        cas(f5, f9);
        cas(f6, f10);
        cas(f7, f28);
        cas(f11, f26);
        cas(f14, f25);
        cas(f19, f23);
        cas(f20, f24);
        cas(f21, f27);
        cas(f0, f11);
        cas(f3, f14);
        cas(f4, f22);
        cas(f5, f20);
        cas(f6, f12);
        cas(f7, f25);
        cas(f9, f24);
        cas(f10, f13);
        cas(f15, f26);
        cas(f16, f19);
        cas(f17, f23);
        cas(f18, f29);
        cas(f3, f15);
        cas(f7, f18);
        cas(f8, f12);
        cas(f10, f16);
        cas(f11, f22);
        cas(f13, f19);
        cas(f14, f26);
        cas(f17, f21);
        cas(f3, f5);
        cas(f7, f21);
        cas(f8, f22);
        cas(f9, f16);
        cas(f11, f12);
        cas(f13, f20);
        cas(f17, f18);
        cas(f24, f26);
        cas(f5, f10);
        cas(f7, f17);
        cas(f9, f14);
        cas(f12, f22);
        cas(f15, f20);
        cas(f19, f24);
        cas(f10, f12);
        cas(f13, f15);
        cas(f14, f16);
        cas(f17, f19);
        cas(f7, f12);
        cas(f17, f22);
        cas(f7, f13);
        cas(f12, f14);
        cas(f15, f17);
        cas(f16, f22);
        cas(f9, f13);
        cas(f12, f15);
        cas(f14, f17);
        cas(f16, f20);
        cas(f13, f15);
        cas(f14, f16);
        cas(f13, f14);
        cas(f15, f16);
        cas(f14, f15);
        cas(f15, f30);
        m = cas_ret1(f14, f15);
    }

    /// @notice Returns the median of an array with 32 elements.
    /// @param a The array to search.
    /// @dev Array length is NOT validated. Overflow is NOT checked.
    /// Network: https://bertdobbelaere.github.io/median_networks.html#N32L128D14
    /// @return m The median of the array.
    function median32(uint256[] memory a) internal pure returns (uint256 m) {
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
        uint256 f12;
        uint256 f13;
        uint256 f14;
        uint256 f15;
        uint256 f16;
        uint256 f17;
        uint256 f18;
        uint256 f19;
        uint256 f20;
        uint256 f21;
        uint256 f22;
        uint256 f23;
        uint256 f24;
        uint256 f25;
        uint256 f26;
        uint256 f27;
        uint256 f28;
        uint256 f29;
        uint256 f30;
        uint256 f31;
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
            f12 := add(a, 0x1a0)
            f13 := add(a, 0x1c0)
            f14 := add(a, 0x1e0)
            f15 := add(a, 0x200)
            f16 := add(a, 0x220)
            f17 := add(a, 0x240)
            f18 := add(a, 0x260)
            f19 := add(a, 0x280)
            f20 := add(a, 0x2a0)
            f21 := add(a, 0x2c0)
            f22 := add(a, 0x2e0)
            f23 := add(a, 0x300)
            f24 := add(a, 0x320)
            f25 := add(a, 0x340)
            f26 := add(a, 0x360)
            f27 := add(a, 0x380)
            f28 := add(a, 0x3a0)
            f29 := add(a, 0x3c0)
            f30 := add(a, 0x3e0)
            f31 := add(a, 0x400)
        }
        cas(f0, f1);
        cas(f2, f3);
        cas(f4, f5);
        cas(f6, f7);
        cas(f8, f9);
        cas(f10, f11);
        cas(f12, f13);
        cas(f14, f15);
        cas(f16, f17);
        cas(f18, f19);
        cas(f20, f21);
        cas(f22, f23);
        cas(f24, f25);
        cas(f26, f27);
        cas(f28, f29);
        cas(f30, f31);
        cas(f0, f2);
        cas(f1, f3);
        cas(f4, f6);
        cas(f5, f7);
        cas(f8, f10);
        cas(f9, f11);
        cas(f12, f14);
        cas(f13, f15);
        cas(f16, f18);
        cas(f17, f19);
        cas(f20, f22);
        cas(f21, f23);
        cas(f24, f26);
        cas(f25, f27);
        cas(f28, f30);
        cas(f29, f31);
        cas(f0, f4);
        cas(f1, f5);
        cas(f2, f6);
        cas(f3, f7);
        cas(f8, f12);
        cas(f9, f13);
        cas(f10, f14);
        cas(f11, f15);
        cas(f16, f20);
        cas(f17, f21);
        cas(f18, f22);
        cas(f19, f23);
        cas(f24, f28);
        cas(f25, f29);
        cas(f26, f30);
        cas(f27, f31);
        cas(f1, f6);
        cas(f4, f22);
        cas(f5, f18);
        cas(f9, f27);
        cas(f11, f19);
        cas(f12, f20);
        cas(f13, f26);
        cas(f25, f30);
        cas(f1, f25);
        cas(f2, f13);
        cas(f3, f27);
        cas(f4, f28);
        cas(f5, f10);
        cas(f6, f30);
        cas(f9, f17);
        cas(f14, f22);
        cas(f18, f29);
        cas(f21, f26);
        cas(f0, f9);
        cas(f1, f12);
        cas(f2, f16);
        cas(f3, f17);
        cas(f4, f8);
        cas(f5, f24);
        cas(f6, f11);
        cas(f7, f26);
        cas(f10, f18);
        cas(f13, f21);
        cas(f14, f28);
        cas(f15, f29);
        cas(f19, f30);
        cas(f20, f25);
        cas(f22, f31);
        cas(f23, f27);
        cas(f3, f14);
        cas(f6, f20);
        cas(f7, f23);
        cas(f8, f24);
        cas(f9, f16);
        cas(f10, f13);
        cas(f11, f25);
        cas(f15, f22);
        cas(f17, f28);
        cas(f18, f21);
        cas(f6, f9);
        cas(f7, f15);
        cas(f8, f10);
        cas(f11, f13);
        cas(f12, f14);
        cas(f16, f24);
        cas(f17, f19);
        cas(f18, f20);
        cas(f21, f23);
        cas(f22, f25);
        cas(f3, f18);
        cas(f7, f17);
        cas(f9, f16);
        cas(f10, f12);
        cas(f13, f28);
        cas(f14, f24);
        cas(f15, f22);
        cas(f19, f21);
        cas(f7, f20);
        cas(f11, f24);
        cas(f12, f16);
        cas(f13, f17);
        cas(f14, f18);
        cas(f15, f19);
        cas(f7, f11);
        cas(f13, f15);
        cas(f16, f18);
        cas(f20, f24);
        cas(f11, f18);
        cas(f13, f20);
        cas(f14, f16);
        cas(f15, f17);
        cas(f11, f13);
        cas(f18, f20);
        uint256 m0 = cas_ret1(f13, f16);
        uint256 m1 = cas_ret0(f15, f18);
        /// @solidity memory-safe-assembly
        assembly {
            m := shr(1, add(m0, m1))
        }
    }


    /// @notice Compare two words and swap if gt.
    /// @param fx The offset of the first word.
    /// @param fy The offset of the second word.
    /// @dev Swap if `mload(fx) > mload(fy)`.
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
    /// @dev Swap if `mload(fx) > mload(fy)`.
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
    /// @dev Swap if `mload(fx) > mload(fy)`.
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
}
