/**3. Struct + Mapping (CRUD)
Create a contract that:
Uses struct for employee (id, name, salary)
Uses mapping

Implements add, update, and get functions**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract employeedetails{
    //struct
    struct employee{
        uint id; string name; uint salary;
    }
    //mapping
    mapping(uint=>employee)employees;

    //create operator
    function createemployeedetails(uint _id,string memory _name,uint _salary)public {
        employees[_id]=employee(_id,_name,_salary);
    }

    //read operator
    function Reademployyedetails(uint _id) public view returns (uint,string memory, uint){
        employee memory e = employees[_id];
        return (e.id,e.name,e.salary);
    }

    //update operator
    function updateemployeedetails(uint _id,string memory _name, uint _salary)public {
        employees[_id] = employee(_id,_name,_salary);
    }

    //delete operator
    function deleteemployeedetails(uint _id)public {
        delete employees[_id];
    }
}