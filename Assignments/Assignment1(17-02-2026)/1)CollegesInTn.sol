// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;
 
contract CollegesinTN{
    uint public Totalcollege;
    string public state;
constructor(){
    Totalcollege = 1000;
    state = "Tamilnadu";
}

function setTotalcollege(uint _newcollege) public {
    Totalcollege = _newcollege;
}
function setstate(string memory _newstate) public{
    state = _newstate;
}
function getTotalcollege() public view returns(uint){
    return Totalcollege;
}
function getstate() public view returns(string memory){
    return state;
}
}