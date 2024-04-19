## Sortnet

Sort fixed-size Solidity arrays in an extremely gas-efficient way.

For arrays of size 2-10 `LibSortNet` consumes 30–60% less gas than insertion sort in [Solady](https://github.com/Vectorized/solady).

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
forge install totomanov/sortnet
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
| 6    | 627                          | 1257                             | 1796                    |
| 7    | 837                          | 1577                             | 2126                    |
| 8    | 1076                         | 1940                             | 2495                    |
| 9    | 1331                         | 2323                             | 2907                    |
| 10   | 1548                         | 2731                             | 3321                    |
| 11   | 2376                         | 3194                             | 3771                    |
| 12   | 2724                         | 3690                             | 4287                    |

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
[PASS] testBench_sort10() (gas: 79892301)
Logs:
  LibSortNet::sort10 (min: 1301, max: 1747, ~: 1548)
  LibSort::insertionSort (min: 1544, max: 3916, ~: 2731)
  LibSort::sort (min: 2187, max: 4465, ~: 3321)

[PASS] testBench_sort11() (gas: 82209683)
Logs:
  LibSortNet::sort11 (min: 2038, max: 2795, ~: 2376)
  LibSort::insertionSort (min: 1925, max: 4640, ~: 3194)
  LibSort::sort (min: 2464, max: 5195, ~: 3771)

[PASS] testBench_sort12() (gas: 83912304)
Logs:
  LibSortNet::sort12 (min: 2242, max: 3083, ~: 2724)
  LibSort::insertionSort (min: 2137, max: 4970, ~: 3690)
  LibSort::sort (min: 2895, max: 5973, ~: 4287)

[PASS] testBench_sort2() (gas: 69401423)
Logs:
  LibSortNet::sort2 (min: 40, max: 71, ~: 55)
  LibSort::insertionSort (min: 268, max: 327, ~: 298)
  LibSort::sort (min: 397, max: 553, ~: 475)

[PASS] testBench_sort3() (gas: 70648831)
Logs:
  LibSortNet::sort3 (min: 118, max: 179, ~: 153)
  LibSort::insertionSort (min: 397, max: 582, ~: 489)
  LibSort::sort (min: 463, max: 1103, ~: 848)

[PASS] testBench_sort4() (gas: 71668024)
Logs:
  LibSortNet::sort4 (min: 196, max: 347, ~: 268)
  LibSort::insertionSort (min: 526, max: 904, ~: 709)
  LibSort::sort (min: 529, max: 1479, ~: 1190)

[PASS] testBench_sort5() (gas: 72985853)
Logs:
  LibSortNet::sort5 (min: 353, max: 556, ~: 445)
  LibSort::insertionSort (min: 655, max: 1293, ~: 970)
  LibSort::sort (min: 595, max: 1928, ~: 1485)

[PASS] testBench_sort6() (gas: 74107595)
Logs:
  LibSortNet::sort6 (min: 469, max: 769, ~: 627)
  LibSort::insertionSort (min: 784, max: 1749, ~: 1257)
  LibSort::sort (min: 933, max: 2444, ~: 1796)

[PASS] testBench_sort7() (gas: 75553028)
Logs:
  LibSortNet::sort7 (min: 670, max: 1000, ~: 837)
  LibSort::insertionSort (min: 1031, max: 2272, ~: 1577)
  LibSort::sort (min: 1479, max: 2893, ~: 2126)

[PASS] testBench_sort8() (gas: 76872860)
Logs:
  LibSortNet::sort8 (min: 889, max: 1303, ~: 1076)
  LibSort::insertionSort (min: 1101, max: 2736, ~: 1940)
  LibSort::sort (min: 1732, max: 3435, ~: 2495)

[PASS] testBench_sort9() (gas: 78513806)
Logs:
  LibSortNet::sort9 (min: 1113, max: 1523, ~: 1331)
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
