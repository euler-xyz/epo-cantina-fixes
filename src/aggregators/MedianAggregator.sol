// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

import {LibSort} from "@solady/utils/LibSort.sol";
import {Aggregator} from "src/aggregators/Aggregator.sol";

contract MedianAggregator is Aggregator {
    constructor(address[] memory _oracles, uint256 _quorum) Aggregator(_oracles, _quorum) {}

    function _aggregateQuotes(uint256[] memory quotes) internal pure override returns (uint256) {
        // sort and return the median
        LibSort.insertionSort(quotes);
        uint256 size = quotes.length;
        uint256 midpoint = size / 2;
        if (size % 2 == 0) {
            return quotes[midpoint];
        } else {
            return (quotes[midpoint] + quotes[midpoint - 1]) / 2;
        }
    }
}