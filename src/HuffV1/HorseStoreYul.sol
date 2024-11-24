// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.24;

contract HorseStoreYul {
    uint256 numberOfHorses;

    function updateHorseNumber(uint256 newNumberOfHorses) external {
        assembly {
            sstore(numberOfHorses.slot,newNumberOfHorses)
        }
    }

    function readNumberOfHorses() external view returns (uint256) {
        assembly{
            let freeMemory := mload(0x40)
            let numberHorse := sload(numberOfHorses.slot)
            mstore(freeMemory,numberHorse)
            return(freeMemory,0x20)
        }
    }
}