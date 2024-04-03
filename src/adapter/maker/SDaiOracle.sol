// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

import {FixedPointMathLib} from "@solady/utils/FixedPointMathLib.sol";
import {BaseAdapter, Errors} from "src/adapter/BaseAdapter.sol";
import {IPot} from "src/adapter/maker/IPot.sol";

/// @title SDaiOracle
/// @author Euler Labs (https://www.eulerlabs.com/)
/// @notice Adapter for pricing Maker sDAI <-> DAI via the DSR Pot contract.
contract SDaiOracle is BaseAdapter {
    uint256 internal constant RAY = 1e27;
    /// @dev The address of the DAI token.
    address public immutable dai;
    /// @dev The address of the sDAI token.
    address public immutable sDai;
    /// @dev The address of the DSR Pot contract.
    address public immutable dsrPot;

    /// @notice Deploy an SDaiOracle.
    /// @param _dai The address of the DAI token.
    /// @param _sDai The address of the sDAI token.
    /// @param _dsrPot The address of the DSR Pot contract.
    /// @dev The oracle will support sDAI/DAI and DAI/sDAI pricing.
    constructor(address _dai, address _sDai, address _dsrPot) {
        dai = _dai;
        sDai = _sDai;
        dsrPot = _dsrPot;
    }

    /// @notice Get a quote by querying the exchange rate from the DSR Pot contract.
    /// @param inAmount The amount of `base` to convert.
    /// @param base The token that is being priced. Either `sDai` or `dai`.
    /// @param quote The token that is the unit of account. Either `dai` or `sDai`.
    /// @return The converted amount.
    function _getQuote(uint256 inAmount, address base, address quote) internal view override returns (uint256) {
        if (base == sDai && quote == dai) {
            return inAmount * _getExchangeRate() / RAY;
        } else if (base == dai && quote == sDai) {
            return inAmount * RAY / _getExchangeRate();
        }
        revert Errors.PriceOracle_NotSupported(base, quote);
    }

    /// @notice Get the exchange rate from the DSR Pot contract.
    /// @dev This function replicates `IPot.drip`, compounding the savings rate for the time since last update.
    /// Calling `drip` directly is not an option because it is state-mutating, making these functions non-view.
    /// @return The sDAI/DAI exchange rate.
    function _getExchangeRate() internal view returns (uint256) {
        uint256 lastUpdatedAt = IPot(dsrPot).rho();
        uint256 exchangeRate = IPot(dsrPot).chi();
        if (lastUpdatedAt == block.timestamp) return exchangeRate;
        uint256 ratePerSecond = IPot(dsrPot).dsr();
        return FixedPointMathLib.rpow(ratePerSecond, block.timestamp - lastUpdatedAt, RAY) * exchangeRate / RAY;
    }
}
