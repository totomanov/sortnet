// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {Test} from "forge-std/Test.sol";
import {LibSortNet} from "src/LibSortNet.sol";

contract LibSortNetTest is Test {
    function testSort2(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 2);
        LibSortNet.sort2(a);
        assertOrdered(a);
    }

    function testSort3(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 3);
        LibSortNet.sort3(a);
        assertOrdered(a);
    }

    function testSort4(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 4);
        LibSortNet.sort4(a);
        assertOrdered(a);
    }

    function testSort5(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 5);
        LibSortNet.sort5(a);
        assertOrdered(a);
    }

    function testSort6(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 6);
        LibSortNet.sort6(a);
        assertOrdered(a);
    }

    function testSort7(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 7);
        LibSortNet.sort7(a);
        assertOrdered(a);
    }

    function testSort8(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 8);
        LibSortNet.sort8(a);
        assertOrdered(a);
    }

    struct FuzzableArr {
        uint256 __dummy;
        uint256 e0;
        uint256 e1;
        uint256 e2;
        uint256 e3;
        uint256 e4;
        uint256 e5;
        uint256 e6;
        uint256 e7;
    }

    function bound(FuzzableArr memory inputs, uint256 size) internal pure returns (uint256[] memory a) {
        assembly {
            mstore(inputs, size)
            a := inputs
        }
    }

    function assertOrdered(uint256[] memory a) internal pure {
        for (uint256 i = 0; i < a.length - 1; ++i) {
            assertLe(a[i], a[i + 1]);
        }
    }
}
