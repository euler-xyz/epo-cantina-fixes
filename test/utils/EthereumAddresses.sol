// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.23;

// Currencies
address constant USD = address(840);

// Tokens
address constant _1INCH = 0x111111111117dC0aa78b770fA6A738034120C302;
address constant AAVE = 0x7Fc66500c84A76Ad7e9c93437bFc5Ac33E2DDaE9;
address constant ALCX = 0xdBdb4d16EdA451D0503b854CF79D55697F90c8DF;
address constant AMPL = 0xD46bA6D942050d489DBd938a2C909A5d5039A161;
address constant ANKR = 0x8290333ceF9e6D528dD5618Fb97a76f268f3EDD4;
address constant APE = 0x4d224452801ACEd8B2F0aebE155379bb5D594381;
address constant ARB = 0xB50721BCf8d664c30412Cfbc6cf7a15145234ad1;
address constant BADGER = 0x3472A5A71965499acd81997a54BBA8D852C6E53d;
address constant BAL = 0xba100000625a3754423978a60c9317c58a424e3D;
address constant BAT = 0x0D8775F648430679A709E98d2b0Cb6250d2887EF;
address constant BNB = 0xB8c77482e45F1F44dE1745F52C74426C631bDD52;
address constant CAKE = 0x152649eA73beAb28c5b49B26eb48f7EAD6d4c898;
address constant CBETH = 0xBe9895146f7AF43049ca1c1AE358B0541Ea49704;
address constant COMP = 0xc00e94Cb662C3520282E6f5717214004A7f26888;
address constant CRV = 0xD533a949740bb3306d119CC777fa900bA034cd52;
address constant CRVUSD = 0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E;
address constant CVX = 0x4e3FBD56CD56c3e72c1403e103b45Db9da5B9D2B;
address constant DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
address constant ENJ = 0xF629cBd94d3791C9250152BD8dfBDF380E2a3B9c;
address constant ENS = 0xC18360217D8F7Ab5e7c516566761Ea12Ce7F9D72;
address constant ETHX = 0xA35b1B31Ce002FBF2058D22F30f95D405200A15b;
address constant EZETH = 0xbf5495Efe5DB9ce00f80364C8B423567e58d2110;
address constant FDUSD = 0xc5f0f7b66764F6ec8C8Dff7BA683102295E16409;
address constant FIL = 0x6e1A19F235bE7ED8E3369eF73b196C07257494DE;
address constant FRAX = 0x853d955aCEf822Db058eb8505911ED77F175b99e;
address constant FTM = 0x21be370D5312f44cB42ce377BC9b8a0cEF1A4C83;
address constant FTT = 0x50D1c9771902476076eCFc8B2A83Ad6b9355a4c9;
address constant FXS = 0x3432B6A60D23Ca0dFCa7761B7ab56459D9C964D0;
address constant GHO = 0x40D16FC0246aD3160Ccc09B8D0D3A2cD28aE6C2f;
address constant GRT = 0xc944E90C64B2c07662A292be6244BDf05Cda44a7;
address constant GUSD = 0x056Fd409E1d7A124BD7017459dFEa2F387b6d5Cd;
address constant HIGH = 0x71Ab77b7dbB4fa7e017BC15090b2163221420282;
address constant IMX = 0xF57e7e7C23978C3cAEC3C3548E3D615c346e79fF;
address constant KNC = 0xdd974D5C2e2928deA5F71b9825b8b646686BD200;
address constant KNCV2 = 0xdeFA4e8a7bcBA345F687a2f1456F5Edd9CE97202;
address constant LDO = 0x5A98FcBEA516Cf06857215779Fd812CA3beF1B32;
address constant LINK = 0x514910771AF9Ca656af840dff83E8264EcF986CA;
address constant LUSD = 0x3Fe6a295459FAe07DF8A0ceCC36F37160FE86AA9;
address constant MANA = 0x0F5D2fB29fb7d3CFeE444a200298f468908cC942;
address constant MAVIA = 0x24fcFC492C1393274B6bcd568ac9e225BEc93584;
address constant MIM = 0x99D8a9C45b2ecA8864373A26D1459e3Dff1e17F3;
address constant MKR = 0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2;
address constant MLN = 0xec67005c4E498Ec7f55E092bd1d35cbC47C91892;
address constant OHMV2 = 0x64aa3364F17a4D01c6f1751Fd97C2BD3D7e7f1D5;
address constant PAX = 0x8E870D67F660D95d5be530380D0eC0bd388289E1;
address constant PAXG = 0x45804880De22913dAFE09f4980848ECE6EcbAf78;
address constant PERP = 0xbC396689893D065F41bc2C6EcbeE5e0085233447;
address constant PYUSD = 0x6c3ea9036406852006290770BEdFcAbA0e23A0e8;
address constant RDNT = 0x137dDB47Ee24EaA998a535Ab00378d6BFa84F893;
address constant REN = 0x408e41876cCCDC0F92210600ef50372656052a38;
address constant RETH = 0xae78736Cd615f374D3085123A210448E74Fc6393;
address constant RPL = 0xD33526068D116cE69F19A9ee46F0bd304F21A51f;
address constant RSETH = 0xA1290d69c65A6Fe4DF752f95823fae25cB99e5A7;
address constant RSR = 0x320623b8E4fF03373931769A31Fc52A4E78B5d70;
address constant SAND = 0x3845badAde8e6dFF049820680d1F14bD3903a5d0;
address constant SDAI = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;
address constant SHIB = 0x95aD61b0a150d79219dCF64E1E6Cc01f0B64C4cE;
address constant SNX = 0xC011a73ee8576Fb46F5E1c5751cA3B9Fe0af2a6F;
address constant STG = 0xAf5191B0De278C7286d6C7CC6ab6BB8A73bA2Cd6;
address constant SPELL = 0x090185f2135308BaD17527004364eBcC2D37e5F6;
address constant STETH = 0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84;
address constant SUSD = 0x57Ab1ec28D129707052df4dF418D58a2D46d5f51;
address constant SUSHI = 0x6B3595068778DD592e39A122f4f5a5cF09C90fE2;
address constant SWETH = 0xf951E335afb289353dc249e82926178EaC7DEd78;
address constant SXP = 0x8CE9137d39326AD0cD6491fb5CC0CbA0e089b6A9;
address constant TBTCV2 = 0x18084fbA666a33d37592fA2633fD49a74DD93a88;
address constant TUSD = 0x0000000000085d4780B73119b644AE5ecd22b376;
address constant UNI = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;
address constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
address constant USDD = 0x0C10bF8FcB7Bf5412187A595ab97a3609160b5c6;
address constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
address constant USDP = 0x8E870D67F660D95d5be530380D0eC0bd388289E1;
address constant USDV = 0x0E573Ce2736Dd9637A0b21058352e1667925C7a8;
address constant WBTC = 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599;
address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
address constant WSOL = 0xD31a59c85aE9D8edEFeC411D448f90841571b89c;
address constant WSTETH = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;
address constant XCN = 0xA2cd3D43c775978A96BdBf12d733D5A1ED94fb18;
address constant YFI = 0x0bc529c00C6401aEF6D220BE8C6Ea1667F6Ad93e;
address constant ZRX = 0xE41d2489571d322189246DaFA5ebDe1F4699F498;

address constant DSR_POT = 0x197E90f9FAD81970bA7976f33CbD77088E5D7cf7;

// Chronicle Feeds
address constant CHRONICLE_ETH_USD_FEED = 0x46ef0071b1E2fF6B42d36e5A177EA43Ae5917f4E;

// Uniswap
address constant UNISWAP_V3_FACTORY = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
address constant UNISWAP_V3_USDC_WETH_500 = 0x88e6A0c2dDD26FEEb64F039a2c41296FcB3f5640;

// Pyth
address constant PYTH = 0x4305FB66699C3B2702D4d05CF36551390A4c69C6;

// Pyth Feeds (see https://pyth.network/developers/price-feed-ids)
bytes32 constant PYTH_ETH_USD_FEED = 0xff61491a931112ddf1bd8147cd1b641375f79f5825126d665480874634fd0ace;
bytes32 constant PYTH_USDC_USD_FEED = 0xeaa020c61cc479712813461ce153894a96a6c00b21ed0cfc2798d1f9a9e9c94a;
bytes32 constant PYTH_GUSD_USD_FEED = 0xe186e116f2c7642d0d8aa89c32345d83ebeb350242b2274c46a19ea82e04fb8d;

// Redstone Feeds
bytes32 constant REDSTONE_ETH_USD_FEED = bytes32("ETH");
