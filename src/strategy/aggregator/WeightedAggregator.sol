// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {OracleDescription} from "src/lib/OracleDescription.sol";
import {Errors} from "src/lib/Errors.sol";
import {PackedUint32Array, PackedUint32ArrayLib} from "src/lib/PackedUint32Array.sol";
import {Aggregator} from "src/strategy/aggregator/Aggregator.sol";
import {AggregatorFunctions} from "src/strategy/aggregator/AggregatorFunctions.sol";

/// @author totomanov
/// @notice Reduce an array of quotes by applying a statistical function.
/// @dev Supports weightedMean. See {AggregatorFunctions}.
contract WeightedAggregator is Aggregator {
    PackedUint32Array public weights;

    /// @inheritdoc Aggregator
    function description() external pure override returns (OracleDescription.Description memory) {
        return OracleDescription.WeightedAggregator();
    }

    // / @inheritdoc Aggregator
    // / @notice Deploy a new WeightedAggregator.
    // / @param _oracles The list of oracles to call simultaneously.
    // / @param _weights An array of weights, corresponding to the oracles.
    // / @param _quorum The minimum number of valid answers required.
    // / If the quorum is not met then `getQuote` and `getQuotes` will revert.
    // / @dev Use small values for `_weights` to avoid overflow.
    function _initializeOracle(bytes memory _data) internal override {
        (uint256[] memory _weights, address[] memory _oracles, uint256 _quorum) =
            abi.decode(_data, (uint256[], address[], uint256));

        if (_oracles.length != _weights.length) revert Errors.Arity2Mismatch(_oracles.length, _weights.length);
        weights = PackedUint32ArrayLib.from(_weights);
        // TODO: optimize
        super._initializeOracle(abi.encode(_oracles, _quorum));
    }

    /// @inheritdoc Aggregator
    function _aggregateQuotes(uint256[] memory quotes, PackedUint32Array successMask)
        internal
        view
        override
        returns (uint256)
    {
        return AggregatorFunctions.weightedMean(quotes, weights, successMask);
    }
}
