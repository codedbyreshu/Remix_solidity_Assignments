// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract capstone{
    address owner;
    constructor () {
        owner = msg.sender;

}
    modifier onlyowner(){
        require(msg.sender == owner,"not owner");
        _;
    }
    enum userstatus{Pending, Approved, Rejected}
    
    struct user{
        uint id;
        string name;
        address wallet;
        userstatus status;
    }
    mapping(address=>user) status1;
    mapping (address => bool) s1;

    // event:
    event useradded(address user, uint id, string name);
    event userupdate(address user, string name);
    event updatestatus(address user,userstatus status);
    event ethersent(address user, uint amount);

    //function add user
    function adduser(uint _id, string memory _name) public onlyowner{
        if(s1[msg.sender]== true){
            revert("user already exist");
        }
        else {
            
        }

    }
}