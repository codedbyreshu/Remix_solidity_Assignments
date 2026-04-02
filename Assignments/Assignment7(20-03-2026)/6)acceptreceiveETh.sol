/** 6. Address Payable
Create a contract that:
Accepts Ether
Sends Ether to another address using address payable
Checks contract balance before transfer
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherExample {

    address payable public receiver;

    constructor(address payable _receiver) {
        receiver = _receiver;
    }

    // accept Ether
    function acceptEth() public payable {}

    // check contract balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // send Ether
    function sendEth() public {
        uint balance = address(this).balance;
        require(balance > 0, "No Ether in contract");

        (bool success, ) = receiver.call{value: balance}("");
        require(success, "Transfer failed");
    }    
}