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
    /// @dev Runs are kept in storage to reduce memory expansion costs polluting benchmark results.
    uint256[RUNS] internal runs0;
    uint256[RUNS] internal runs1;
    uint256[RUNS] internal runs2;

    function testBench_sort2() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort2");
    }

    function testBench_sort3() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort3");
    }

    function testBench_sort4() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort4");
    }

    function testBench_sort5() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort5");
    }

    function testBench_sort6() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort6");
    }

    function testBench_sort7() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort7");
    }

    function testBench_sort8() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
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

        printBenchmark("LibSortNet::sort8");
    }

    function testBench_sort9() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[] memory a = arrOf(9);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort9(a);
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

        printBenchmark("LibSortNet::sort9");
    }

    function testBench_sort10() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[] memory a = arrOf(10);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort10(a);
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

        printBenchmark("LibSortNet::sort10");
    }

    function testBench_sort11() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[] memory a = arrOf(11);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort11(a);
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

        printBenchmark("LibSortNet::sort11");
    }

    function testBench_sort12() public {
        LibPRNG.PRNG memory prng = LibPRNG.PRNG(PRNG_SEED);
        uint256[] memory a = arrOf(12);

        for (uint256 i = 0; i < RUNS; ++i) {
            LibPRNG.shuffle(prng, a);
            uint256 before0 = gasleft();
            LibSortNet.sort12(a);
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

        printBenchmark("LibSortNet::sort12");
    }

    function printBenchmark(string memory s) internal view {
        printRuns(s, runs0);
        printRuns("LibSort::insertionSort", runs1);
        printRuns("LibSort::sort", runs2);
    }

    function printRuns(string memory s, uint256[RUNS] memory runs) internal pure {
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
        console2.log(string.concat(s, " (min: %s, max: %s, ~: %s)"), min, max, mean);
    }

    function arrOf(uint256 size) internal pure returns (uint256[] memory a) {
        a = new uint256[](size);
        for (uint256 i = 0; i < size; ++i) {
            a[i] = i;
        }
    }
}
