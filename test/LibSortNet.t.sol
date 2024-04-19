// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {console2} from "forge-std/console2.sol";
import {Test} from "forge-std/Test.sol";
import {LibSortNet} from "src/LibSortNet.sol";

contract LibSortNetTest is Test {
    uint256 internal constant MAX_VALUE = type(uint256).max / 2;

    function testSort2(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 2);
        LibSortNet.sort2(a);
        assertSorted(a);
    }

    function testSort3(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 3);
        LibSortNet.sort3(a);
        assertSorted(a);
    }

    function testSort4(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 4);
        LibSortNet.sort4(a);
        assertSorted(a);
    }

    function testSort5(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 5);
        LibSortNet.sort5(a);
        assertSorted(a);
    }

    function testSort6(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 6);
        LibSortNet.sort6(a);
        assertSorted(a);
    }

    function testSort7(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 7);
        LibSortNet.sort7(a);
        assertSorted(a);
    }

    function testSort8(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 8);
        LibSortNet.sort8(a);
        assertSorted(a);
    }

    function testSort9(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 9);
        LibSortNet.sort9(a);
        assertSorted(a);
    }

    function testSort10(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 10);
        LibSortNet.sort10(a);
        assertSorted(a);
    }

    function testSort11(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 11);
        LibSortNet.sort11(a);
        assertSorted(a);
    }

    function testSort12(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 12);
        LibSortNet.sort12(a);
        assertSorted(a);
    }

    function testMedian2(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 2);
        uint256 median = LibSortNet.median2(a);
        assertEq(median, (a[0] + a[1]) / 2);
    }

    function testMedian3(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 3);
        uint256 median = LibSortNet.median3(a);
        LibSortNet.sort3(a);
        assertEq(median, a[1]);
    }

    function testMedian4(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 4);
        uint256 median = LibSortNet.median4(a);
        LibSortNet.sort4(a);
        assertEq(median, (a[1] + a[2]) / 2);
    }

    function testMedian5(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 5);
        uint256 median = LibSortNet.median5(a);
        LibSortNet.sort5(a);
        assertEq(median, a[2]);
    }

    function testMedian6(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 6);
        uint256 median = LibSortNet.median6(a);
        LibSortNet.sort6(a);
        assertEq(median, (a[2] + a[3]) / 2);
    }

    function testMedian7(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 7);
        uint256 median = LibSortNet.median7(a);
        LibSortNet.sort7(a);
        assertEq(median, a[3]);
    }

    function testMedian8(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 8);
        uint256 median = LibSortNet.median8(a);
        LibSortNet.sort8(a);
        assertEq(median, (a[3] + a[4]) / 2);
    }

    function testMedian9(FuzzableArr memory f) public pure {
        uint256[] memory a = bound(f, 9);
        uint256 median = LibSortNet.median9(a);
        LibSortNet.sort9(a);
        assertEq(median, a[4]);
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
        uint256 e8;
        uint256 e9;
        uint256 e10;
        uint256 e11;
    }

    function bound(FuzzableArr memory inputs, uint256 size) internal pure returns (uint256[] memory a) {
        inputs.e0 = bound(inputs.e0, 0, MAX_VALUE);
        inputs.e1 = bound(inputs.e1, 0, MAX_VALUE);
        inputs.e2 = bound(inputs.e2, 0, MAX_VALUE);
        inputs.e3 = bound(inputs.e3, 0, MAX_VALUE);
        inputs.e4 = bound(inputs.e4, 0, MAX_VALUE);
        inputs.e5 = bound(inputs.e5, 0, MAX_VALUE);
        inputs.e6 = bound(inputs.e6, 0, MAX_VALUE);
        inputs.e7 = bound(inputs.e7, 0, MAX_VALUE);
        inputs.e8 = bound(inputs.e8, 0, MAX_VALUE);
        inputs.e9 = bound(inputs.e9, 0, MAX_VALUE);
        inputs.e10 = bound(inputs.e10, 0, MAX_VALUE);
        inputs.e11 = bound(inputs.e11, 0, MAX_VALUE);
        assembly {
            mstore(inputs, size)
            a := inputs
        }
    }

    function assertSorted(uint256[] memory a) internal pure {
        for (uint256 i = 0; i < a.length - 1; ++i) {
            assertLe(a[i], a[i + 1]);
        }
    }
}
