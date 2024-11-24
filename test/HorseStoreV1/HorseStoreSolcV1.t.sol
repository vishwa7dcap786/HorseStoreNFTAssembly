//SPDX-Lisence-Identifier:MIT

pragma solidity 0.8.24;

import {Base_TestV1,HorseStore} from "./Base_TestV1.t.sol";
import {HorseStoreYul} from "../../src/HuffV1/HorseStoreYul.sol";

contract HorseStoreSolc is Base_TestV1{
    HorseStoreYul horseStoreYul;
    function setUp() public override {
        super.setUp();
        horseStoreYul = new HorseStoreYul();
    }

    function testupdateHorseNumber(uint256 number) public {
        horseStore.updateHorseNumber(number);
        uint256 num = horseStore.readNumberOfHorses();
        assertEq(num, number);
    }

    function testupdateHorseNumberYul(uint256 number) public {
        horseStoreYul.updateHorseNumber(number);
        uint256 num = horseStoreYul.readNumberOfHorses();
        assertEq(num, number);
    }

}