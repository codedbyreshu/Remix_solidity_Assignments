/** 1. Event + Struct + Mapping
Create a contract that:
Uses a struct to store user details (id, name)
Uses mapping with address
Emits and event when a user is registered
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract userdetails {
    //struct
    struct user{
        uint id; string name;
    }
    //mapping with address
    mapping (address=>user) users;
    //event
    event details(uint id,string name);
    //set functiomn\
    function setuserdetails(uint256 _id, string memory _name) public {
        users[msg.sender]=user(_id,_name);
        //emit
        emit details(_id,_name);
    }
    //get function
    function getuserdetails () public  view  returns (uint, string memory){
        user memory u = users[msg.sender];
        return (u.id, u.name);
    }

}