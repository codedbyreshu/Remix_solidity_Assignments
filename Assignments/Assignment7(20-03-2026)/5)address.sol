/*** 5. Address Concept
Create a contract that:
Stores last caller address
Returns msg.sender using a function**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract calleraddress{
    address public lastcaller;
/**address[] public callers;

function setCaller() public {
    callers.push(msg.sender);
}**/

    // store last caller
    function setcaller()public{
        lastcaller = msg.sender;
    }
    //return msg.sender
    function getcaller() public view returns (address){
        return msg.sender;
    }

}