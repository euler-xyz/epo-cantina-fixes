// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

import {LibSort} from "@solady/utils/LibSort.sol";
import {Aggregator} from "src/aggregators/Aggregator.sol";

contract MaxAggregator is Aggregator {
    constructor(address[] memory _oracles, uint256 _quorum) Aggregator(_oracles, _quorum) {}

    function _aggregateQuotes(uint256[] memory quotes) internal pure override returns (uint256) {
        // return and return the lowest quote
        LibSort.insertionSort(quotes);
        return quotes[quotes.length - 1];
    }
}