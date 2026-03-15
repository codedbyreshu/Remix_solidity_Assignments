// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract StudentAge{
    string public academy;
    int120 public student;
constructor(){
    academy = "Techara";
    student = 50;
}
function getstudent(int120 _newstudent) public {
    student = _newstudent;
} 
function getacademy(string memory _newmessage) public {
    academy = _newmessage;
}
function setstudenty() public view returns(int256){
    return student;
}
function setacademy() public view returns(string memory){
    return academy;
    }
}