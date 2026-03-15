// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentMarks {

    // Array
    uint[] public marks;

    // Set Function - Add Marks
    function setMarks(uint _mark) public {
        marks.push(_mark);
    }

    // Get Function - Get Mark by Index
    function getMarks(uint index) public view returns(uint) {
        return marks[index];
    }
}