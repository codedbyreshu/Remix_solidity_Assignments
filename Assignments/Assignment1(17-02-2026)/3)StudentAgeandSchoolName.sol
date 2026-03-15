// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract StudentAge{
    uint public age;
    string public school;
constructor(){
    age = 10;
    school = "Optimus";
}
function getAge(uint _newage) public {
    age = _newage;
} 
function getschool(string memory _newschool) public {
    school = _newschool;
}
function setage() public view returns(uint){
    return age;
}
function setschool() public view returns(string memory){
    return school;
    }
}