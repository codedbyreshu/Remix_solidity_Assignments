//SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract SmartProfileFinance {

    uint public balance;           //Finance Section
    int public  ProfitorLoss;      //Finance Section 
    bool public isactive;          //Contract Stat
    string public username;        //user profile    
    bytes public data;             //Raw Data Section

constructor(){
    balance = 0;
    ProfitorLoss =0;
    isactive = true;
}

//1.Finance Section
function deposit(uint _amount) public{
    require(isactive,"Contract is Active");
    balance += _amount;
}

function UpdateProfit(int _amount) public {
    require(isactive, "Contract is Active");
    ProfitorLoss += _amount;
}

//2.Toggle Status
function togglestatus() public {
    isactive = !isactive;
}

//3.User Profile
function setusername(string memory _name) public {
    username = _name;
}
function getusernamelength() public view returns(uint) {
    return bytes(username).length;
}
function compareusername(string memory _other) public view returns (bool){
    return keccak256(bytes(username)) == keccak256(bytes(_other));
}

//4.Raw Data Section
function setdata(string memory _text) public {
    data = bytes(_text);
}
function getData() public view returns(uint) {
    return data.length;
}
function getByte(uint index) public view returns(bytes1){
    require (index < data.length, "Index out of range");
    return data[index]; 
}

//5.Final Function
function getdetails() public view returns(uint256,int256,bool,string memory) {
    return (balance, ProfitorLoss, isactive, username);
}
}