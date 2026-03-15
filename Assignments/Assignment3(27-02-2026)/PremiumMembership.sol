// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;    

contract PremiumMembership{
    string public Membersname;
    uint public Subscription;
    int public Profitorloss;
    bool public isactive;
    bytes public secretkey;
constructor(){
    Subscription = 0;
    isactive = true;

}
//1.Member Identity Management
function getMembersname(string memory _name) public {
    Membersname = _name;
}   
function setMembersname() public view returns(uint){
    return bytes(Membersname).length;
}
function verifyMembersname(string memory _other) public view returns(bool){
    return keccak256(bytes(Membersname)) == keccak256(bytes(_other));
}

//2.Subscription Payment Management (Financial Tracking)
function setSubscription (uint256 _amount) public {
    require(isactive, "Subscription payments stop");
    Subscription += _amount;
    Profitorloss += int(_amount);
}

function refund(uint256 _amount) public{
    require(isactive,"Refund payment stop");
    require(_amount <= Subscription, "Balance is insufficient");
    Subscription -= _amount;
    Profitorloss -= int(_amount);
}

//4.System Activation Control (Security Layer)

function setActive() public {
    isactive = true;
}  
function getInactive() public {
    isactive = false;
}
function getstatus () public view returns (bool){
    return isactive;
}

//5.Secret Digital Access Key Storage
function setsecretkey(string memory _text) public{
    secretkey = bytes(_text);    
}
function getsecretkeylength(uint index) public view returns(bytes1){
    require(index < secretkey.length,"index out of range");
    return secretkey[index];
}

//6.Complete System Summary
function PremiumMembershipdetails() public view returns(string memory, uint256, int256, bool) {
    return (Membersname,Subscription,Profitorloss,isactive);
}
}