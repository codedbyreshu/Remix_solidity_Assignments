/**1 Assignment – Array (Set & Get)
Question
Create a Solidity smart contract to store student marks using an Array.
Requirements:
Create an array called marks.
Create a setMarks() function to add marks into the array.
Create a getMarks() function to retrieve marks using an index.
**/

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract studentmarks{
    uint[] public marks;

    function setMarks(uint _marks) public {
        marks.push(_marks);
    }
    function getMarks(uint _index) public  view  returns(uint) {
        return marks[_index];
    }
    function getlength() public view returns(uint){
        return marks.length;
    }
}