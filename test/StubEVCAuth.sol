// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

contract StubEVCAuth {
    address a;

    function setCurrentOnBehalfOfAccount(address _a) external {
        a = _a;
    }

    function getCurrentOnBehalfOfAccount(address) external view returns (address, bool) {
        require(a != address(0), "OnBehalfOfAccountNotAuthenticated");
        return (a, false);
    }

    function makeCall(address to, bytes calldata data) external {
        (bool success,) = to.call(data);
        require(success);
    }
}
