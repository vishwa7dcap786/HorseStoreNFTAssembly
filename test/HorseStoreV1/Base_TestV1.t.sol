//SPDX-Lisence-Identifier:MIT

pragma solidity 0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {HorseStore} from "../../src/HuffV1/HorseStore.sol";


abstract contract Base_TestV1 is Test{
    HorseStore horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    
}  
