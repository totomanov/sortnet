// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {LibSortNet} from "src/LibSortNet.sol";

library LibSortNetHarness {
    function sortNTable() internal pure returns (function(uint256[] memory) internal pure[33] memory) {
        return [
            LibSortNet.sort2,
            LibSortNet.sort2,
            LibSortNet.sort2,
            LibSortNet.sort3,
            LibSortNet.sort4,
            LibSortNet.sort5,
            LibSortNet.sort6,
            LibSortNet.sort7,
            LibSortNet.sort8,
            LibSortNet.sort9,
            LibSortNet.sort10,
            LibSortNet.sort11,
            LibSortNet.sort12,
            LibSortNet.sort13,
            LibSortNet.sort14,
            LibSortNet.sort15,
            LibSortNet.sort16,
            LibSortNet.sort17,
            LibSortNet.sort18,
            LibSortNet.sort19,
            LibSortNet.sort20,
            LibSortNet.sort21,
            LibSortNet.sort22,
            LibSortNet.sort23,
            LibSortNet.sort24,
            LibSortNet.sort25,
            LibSortNet.sort26,
            LibSortNet.sort27,
            LibSortNet.sort28,
            LibSortNet.sort29,
            LibSortNet.sort30,
            LibSortNet.sort31,
            LibSortNet.sort32
        ];
    }

    function medianNTable() internal pure returns (function(uint256[] memory) internal pure returns (uint256)[33] memory) {
        return [
            LibSortNet.median3,
            LibSortNet.median3,
            LibSortNet.median3,
            LibSortNet.median3,
            LibSortNet.median4,
            LibSortNet.median5,
            LibSortNet.median6,
            LibSortNet.median7,
            LibSortNet.median8,
            LibSortNet.median9,
            LibSortNet.median10,
            LibSortNet.median11,
            LibSortNet.median12,
            LibSortNet.median13,
            LibSortNet.median14,
            LibSortNet.median15,
            LibSortNet.median16,
            LibSortNet.median17,
            LibSortNet.median18,
            LibSortNet.median19,
            LibSortNet.median20,
            LibSortNet.median21,
            LibSortNet.median22,
            LibSortNet.median23,
            LibSortNet.median24,
            LibSortNet.median25,
            LibSortNet.median26,
            LibSortNet.median27,
            LibSortNet.median28,
            LibSortNet.median29,
            LibSortNet.median30,
            LibSortNet.median31,
            LibSortNet.median32
        ];
    }

    function sortN(uint256 n, uint256[] memory arr) internal pure {
        sortNTable()[n](arr);
    }

    function medianN(uint256 n, uint256[] memory arr) internal pure returns (uint256) {
        return medianNTable()[n](arr);
    }
}