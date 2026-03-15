// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract Studentnameande{
    string public name;
    string public school;
constructor(){
    name = "MAHETHI R R";
    school = "Optimus";
}
function getname(string memory _newname) public {
    name = _newname;
} 
function getschool(string memory _newschool) public {
    school = _newschool;
}
function setname() public view returns(string memory){
    return name;
}
function setschool() public view returns(string memory){
    return school;
    }
}