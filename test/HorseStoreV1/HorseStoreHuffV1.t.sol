//SPDX-Lisence-Identifier:MIT

pragma solidity 0.8.24;

import {Base_TestV1, HorseStore} from "./Base_TestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HorseStoreHuff is Base_TestV1{
    string public constant location = "HuffV1/HorseStore";

    function setUp() public override {
        horseStore = HorseStore(HuffDeployer.config().deploy(location));
    }

    function testupdateHorseNumberHuff(uint256 number) public {
        horseStore.updateHorseNumber(number);
        uint256 num = horseStore.readNumberOfHorses();
        assertEq(num, number);
    }

}