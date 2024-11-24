//SPDX-Lisence-Identifier:MIT

pragma solidity 0.8.24;

import {Base_TestV2,HorseStore} from "./Base_TestV2.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
contract HorseStoreHuffV2 is Base_TestV2{

    string public constant HorseStore_Location = "HuffV2/HorseStore";

    function setUp() public override{
        horseStore = HorseStore(HuffDeployer.config().with_args(bytes.concat(abi.encode("HorseStore"),abi.encode("HS"))).deploy(HorseStore_Location));
    }
}