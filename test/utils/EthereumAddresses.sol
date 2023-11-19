// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.22;

// Tokens
address constant LDO = 0x5A98FcBEA516Cf06857215779Fd812CA3beF1B32;
address constant STETH = 0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84;
address constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
address constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
address constant WBTC = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
address constant WSTETH = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;

// Chainlink
address constant FEED_REGISTRY = 0x47Fb2585D2C56Fe188D0E6ec628a38b74fCeeeDf;

// Chainlink Feeds
address constant CHAINLINK_BTC_ETH_FEED = 0xdeb288F737066589598e9214E782fa5A8eD689e8;
address constant CHAINLINK_STETH_ETH_FEED = 0x86392dC19c0b719886221c78AB11eb8Cf5c52812;
address constant CHAINLINK_WBTC_BTC_FEED = 0xfdFD9C85aD200c506Cf9e21F1FD8dd01932FBB23;

// Uniswap
address constant UNISWAP_V3_FACTORY = 0x1F98431c8aD98523631AE4a59f267346ea31F984;

// Pyth
address constant PYTH = 0x4305FB66699C3B2702D4d05CF36551390A4c69C6;

// Pyth Feeds (see https://pyth.network/developers/price-feed-ids)
bytes32 constant PYTH_ETH_USD_FEED = 0xff61491a931112ddf1bd8147cd1b641375f79f5825126d665480874634fd0ace;
bytes32 constant PYTH_USDC_USD_FEED = 0xeaa020c61cc479712813461ce153894a96a6c00b21ed0cfc2798d1f9a9e9c94a;

// Chronicle Feeds (see https://chroniclelabs.org/dashboard/oracles)
address constant CHRONICLE_BTC_USD_FEED = 0xe0F30cb149fAADC7247E953746Be9BbBB6B5751f;
address constant CHRONICLE_ETH_USD_FEED = 0x64DE91F5A373Cd4c28de3600cB34C7C6cE410C85;
