// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {Test} from "forge-std/Test.sol";
import {LibSortNetHarness} from "test/LibSortNetHarness.sol";

contract LibSortNetTest is Test {
    uint256 internal constant MAX_VALUE = type(uint256).max / 2;
    uint256 internal constant MAX_SIZE = 32;

    function testSort(FuzzableArr memory f, uint256 size) public pure {
        size = bound(size, 2, MAX_SIZE);
        uint256[] memory a = bound(f, size);

        LibSortNetHarness.sortN(size, a);
        assertSorted(a);
    }

    function testMedian(FuzzableArr memory f, uint256 size) public pure {
        size = bound(size, 3, MAX_SIZE);
        uint256[] memory a = bound(f, size);

        uint256 median = LibSortNetHarness.medianN(size, a);
        uint256 mid = size / 2;
        uint256 expected = size % 2 == 1 ? a[mid] : (a[mid - 1] + a[mid]) / 2;

        assertEq(median, expected);
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
        uint256 e12;
        uint256 e13;
        uint256 e14;
        uint256 e15;
        uint256 e16;
        uint256 e17;
        uint256 e18;
        uint256 e19;
        uint256 e20;
        uint256 e21;
        uint256 e22;
        uint256 e23;
        uint256 e24;
        uint256 e25;
        uint256 e26;
        uint256 e27;
        uint256 e28;
        uint256 e29;
        uint256 e30;
        uint256 e31;
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
        inputs.e12 = bound(inputs.e12, 0, MAX_VALUE);
        inputs.e13 = bound(inputs.e13, 0, MAX_VALUE);
        inputs.e14 = bound(inputs.e14, 0, MAX_VALUE);
        inputs.e15 = bound(inputs.e15, 0, MAX_VALUE);
        inputs.e16 = bound(inputs.e16, 0, MAX_VALUE);
        inputs.e17 = bound(inputs.e17, 0, MAX_VALUE);
        inputs.e18 = bound(inputs.e18, 0, MAX_VALUE);
        inputs.e19 = bound(inputs.e19, 0, MAX_VALUE);
        inputs.e20 = bound(inputs.e20, 0, MAX_VALUE);
        inputs.e21 = bound(inputs.e21, 0, MAX_VALUE);
        inputs.e22 = bound(inputs.e22, 0, MAX_VALUE);
        inputs.e23 = bound(inputs.e23, 0, MAX_VALUE);
        inputs.e24 = bound(inputs.e24, 0, MAX_VALUE);
        inputs.e25 = bound(inputs.e25, 0, MAX_VALUE);
        inputs.e26 = bound(inputs.e26, 0, MAX_VALUE);
        inputs.e27 = bound(inputs.e27, 0, MAX_VALUE);
        inputs.e28 = bound(inputs.e28, 0, MAX_VALUE);
        inputs.e29 = bound(inputs.e29, 0, MAX_VALUE);
        inputs.e30 = bound(inputs.e30, 0, MAX_VALUE);
        inputs.e31 = bound(inputs.e31, 0, MAX_VALUE);

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
