// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStroage is Script {
    function run() external returns (SimpleStorage) {
        SimpleStorage simpleStorage;
        vm.startBroadcast();
        simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

// To interact with the deployed contract
// cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "showFavouriteNumber()(uint256)" --rpc-url $RPC_URL

// cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "store(uint256)" 22 --rpc-url $RPC_URL --private-key $PRIVATE_KEY
