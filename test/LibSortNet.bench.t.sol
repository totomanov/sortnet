// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {console2} from "forge-std/console2.sol";
import {Test} from "forge-std/Test.sol";
import {LibPRNG} from "@solady/utils/LibPRNG.sol";
import {LibSort} from "@solady/utils/LibSort.sol";
import {LibSortNet} from "src/LibSortNet.sol";

contract LibSortNetBenchTest is Test {
    uint256 internal constant PRNG_SEED = 2718;
    uint256 internal constant RUNS = 1000;

    function printRuns(string memory s, uint256[RUNS] memory runs) internal view {
        uint256 min = type(uint256).max;
        uint256 max = 0;
        uint256 sum = 0;
        for (uint256 i = 0; i < RUNS; ++i) {
            uint256 run = runs[i];
            if (run < min) min = run;
            if (run > max) max = run;
            sum += run;
        }
        uint256 mean = sum / RUNS;
        console2.log(s, min, max, mean);
    }

    function testBench_sort2() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(2);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort2(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort2 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function testBench_sort3() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(3);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort3(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort3 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function testBench_sort4() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(4);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort4(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort4 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function testBench_sort5() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(5);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort5(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort5 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function testBench_sort6() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(6);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort6(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort6 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function testBench_sort7() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(7);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort7(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort7 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function testBench_sort8() public view {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[RUNS] memory runs0;
        uint256[RUNS] memory runs1;
        uint256[RUNS] memory runs2;
        uint256[] memory a = arrOf(8);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort8(a);
            uint256 after0 = gasleft();
            runs0[i] = before0 - after0;

            LibPRNG.shuffle(prng, a);
            uint256 before1 = gasleft();
            LibSort.insertionSort(a);
            uint256 after1 = gasleft();
            runs1[i] = before1 - after1;

            LibPRNG.shuffle(prng, a);
            uint256 before2 = gasleft();
            LibSort.sort(a);
            uint256 after2 = gasleft();
            runs2[i] = before2 - after2;
        }

        printRuns("LibSortNet::sort8 (min: %s, max: %s, ~: %s)", runs0);
        printRuns("LibSort::insertionSort (min: %s, max: %s, ~: %s)", runs1);
        printRuns("LibSort::sort (min: %s, max: %s, ~: %s)", runs2);
    }

    function arrOf(uint256 size) internal pure returns (uint256[] memory a) {
        a = new uint256[](size);
        for (uint256 i = 0; i < size; ++i) {
            a[i] = i;
        }
    }

    // function deepcopy(uint256[] memory a) internal pure returns (uint256[] memory) {
    //     uint256[] memory $a = new uint256[](a.length);
    //     for (uint256 i = 0; i < a.length; ++i) {
    //         $a[i] = a[i];
    //     }
    //     return $a;
    // }
}
