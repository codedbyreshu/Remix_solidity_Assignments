/**Create a smart contract that includes:
Constructor to set owner
Modifier to restrict access
Enum for user status (Pending, Approved, Rejected)
Struct to store user details (id, name, wallet, status)
Mapping with address to store users
Function to add user (prevent duplicates)
Function to update user
Function to approve/reject user (only owner)
Function to send Ether only to approved users
Use if-else conditions
Emit events for all major actions
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract wallet{
    address public owner;
    //enum  for user status
    enum userstatus{Pending,Approved,Rejected}

    //struct
    struct user {
        uint id;
        string name;
        uint walletbalance;
        userstatus status;
    }
    //constructor 
    constructor(){
        owner= msg.sender;
    }

    //modifier only owner can send amount
    modifier onlyowner(){
        require(msg.sender == owner);
        _;
    }
    //mapping with address
    mapping(address=>user)users;

    //event
    event adduser(uint _id,string _name,uint _walletbalance,userstatus _status );

    //Function to add user
    function Adduser(uint _id,string memory _name,uint _walletbalance,userstatus _status)public onyowner(){
        users[_id] = user(_id,_name,_walletbalance,_status);    
        //emit
        emit adduser(_id,_name_walletbalance,_status);
    }
    Unable to get a response from AI server

    //Function to update user
    functionupdateuser(uint _id)public onlyowner (uint _id,string memory _name,uint _walletbalance,userstatus _status ){
        users[_id] =use(_id,_name,_walletbalance,_status)
    }



}