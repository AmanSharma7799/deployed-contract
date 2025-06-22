// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/AllowanceWallet.sol";

contract DeployAllowanceWallet is Script {
    function run() external {
        vm.startBroadcast();
        AllowanceWallet wallet = new AllowanceWallet();
        console.log("Deployed AllowanceWallet at:", address(wallet));
        vm.stopBroadcast();
    }
}
