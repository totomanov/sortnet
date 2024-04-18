## Sortnet

Solidity library for sorting fixed-size arrays in an extremely gas-efficient way.

`LibSortNet` sorts small fixed-size arrays in 30–60% less gas than [Solady](https://github.com/Vectorized/solady)'s gas-optimized `LibSort::insertionSort`.

## Introduction

A _sorting network_ is a sequence of operations that sorts an array in place. Each operation compares two elements and swaps them conditionally.

### Example

`(0,2),(0,1),(1,2)` is a sorting network for an array of length 3.

```solidity
[1 2 0] --(0,2)-> [0 2 1] --(0,1)-> [0 2 1] --(1,2)-> [0 1 2]
[2 0 1] --(0,2)-> [1 0 2] --(0,1)-> [0 1 2] --(1,2)-> [0 1 2]
[2 1 0] --(0,2)-> [0 1 2] --(0,1)-> [0 1 2] --(1,2)-> [0 1 2]
```

## Resources

[Introduction to Sorting Networks (Doug Hoyte)](https://hoytech.github.io/sorting-networks/)

[List of Sorting Networks (Bert Dobbelaere)](https://bertdobbelaere.github.io/sorting_networks.html)

## Installation

To install with [**Foundry**](https://github.com/foundry-rs/foundry):

```sh
forge install transmissions11/solmate
```

## Usage

You can use `LibSortNet` to sort a `uint256[] memory` array with a known fixed size (2-10) in place in ascending order.

## Benchmark

```sh
forge test --match-test Bench -vvv
```

### Gas table

| size | `@sortnet/LibSortNet::sort*` | `@solady/LibSort::insertionSort` | `@solady/LibSort::sort` |
| ---- | ---------------------------- | -------------------------------- | ----------------------- |
| 2    | 55                           | 298                              | 475                     |
| 3    | 153                          | 489                              | 848                     |
| 4    | 268                          | 709                              | 1190                    |
| 5    | 445                          | 970                              | 1485                    |
| 6    | 633                          | 1257                             | 1793                    |
| 7    | 859                          | 1574                             | 2123                    |
| 8    | 1361                         | 1940                             | 2495                    |
| 9    | 1715                         | 2323                             | 2907                    |
| 10   | 1961                         | 2731                             | 3321                    |

<details>
  <summary><i>Data</i></summary>

Compiled with:

```toml
solc = "0.8.25"
optimizer = true
optimizer_runs = 20_000
via-ir = true
```

```
[PASS] testBench_sort10() (gas: 13820756)
Logs:
  LibSortNet::sort10 (min: 1605, max: 2236, ~: 1961)
  LibSort::insertionSort (min: 1544, max: 3916, ~: 2731)
  LibSort::sort (min: 2187, max: 4465, ~: 3321)

[PASS] testBench_sort2() (gas: 2926355)
Logs:
  LibSortNet::sort2 (min: 40, max: 71, ~: 55)
  LibSort::insertionSort (min: 268, max: 327, ~: 298)
  LibSort::sort (min: 397, max: 553, ~: 475)

[PASS] testBench_sort3() (gas: 4176736)
Logs:
  LibSortNet::sort3 (min: 118, max: 179, ~: 153)
  LibSort::insertionSort (min: 397, max: 582, ~: 489)
  LibSort::sort (min: 463, max: 1127, ~: 848)

[PASS] testBench_sort4() (gas: 5192828)
Logs:
  LibSortNet::sort4 (min: 196, max: 347, ~: 268)
  LibSort::insertionSort (min: 526, max: 904, ~: 709)
  LibSort::sort (min: 529, max: 1479, ~: 1190)

[PASS] testBench_sort5() (gas: 6516705)
Logs:
  LibSortNet::sort5 (min: 353, max: 556, ~: 445)
  LibSort::insertionSort (min: 655, max: 1293, ~: 970)
  LibSort::sort (min: 595, max: 1928, ~: 1485)

[PASS] testBench_sort6() (gas: 7650128)
Logs:
  LibSortNet::sort6 (min: 480, max: 770, ~: 633)
  LibSort::insertionSort (min: 784, max: 1749, ~: 1257)
  LibSort::sort (min: 930, max: 2441, ~: 1793)

[PASS] testBench_sort7() (gas: 9133359)
Logs:
  LibSortNet::sort7 (min: 698, max: 1017, ~: 859)
  LibSort::insertionSort (min: 1028, max: 2269, ~: 1574)
  LibSort::sort (min: 1476, max: 2890, ~: 2123)

[PASS] testBench_sort8() (gas: 10676116)
Logs:
  LibSortNet::sort8 (min: 1096, max: 1685, ~: 1361)
  LibSort::insertionSort (min: 1101, max: 2736, ~: 1940)
  LibSort::sort (min: 1732, max: 3435, ~: 2495)

[PASS] testBench_sort9() (gas: 12413804)
Logs:
  LibSortNet::sort9 (min: 1399, max: 1991, ~: 1715)
  LibSort::insertionSort (min: 1356, max: 3192, ~: 2323)
  LibSort::sort (min: 1963, max: 3977, ~: 2907)
```

</details>

## Safety

This is **experimental software** and is provided on an "as is" and "as available" basis.

We **do not give any warranties** and **will not be liable for any loss** incurred through any use of this codebase.

Please always include your own thorough tests when using Sortnet to make sure it works correctly with your code.

## Acknowledgements

[hoytech](https://github.com/hoytech) and [Solady](https://github.com/Vectorized/solady)
