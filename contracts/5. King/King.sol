// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "hardhat/console.sol";

contract King {
    address payable public king;
    uint256 public prize;
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
        king = payable(msg.sender);
        prize = msg.value;
    }

    receive() external payable {
        // console.log("prize", 1);
        // console.log("prize", 1);
        // console.log("prize", 1);
        // console.log("prize", 1);
        // console.log("Received payment", msg.value);
        // require(msg.value >= prize || msg.sender == owner, "Insufficient");
        console.log(king);
        console.log("Sending payment to old king");
        
        king.transfer(1 wei);
        console.log("Sent payment to old king");
        king = payable(msg.sender);
        prize = msg.value;
    }

    function _king() public view returns (address payable) {
        return king;
    }

    function _prize() public view returns (uint256) {
        return prize;
    }
}
