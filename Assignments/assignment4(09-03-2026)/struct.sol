// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeDetails {

    // Struct
    struct Employee {
        uint id;
        string name;
        uint salary;
    }

    // Struct variable
    Employee public emp;

    // Set Function
    function setEmployee(uint _id, string memory _name, uint _salary) public {
        emp = Employee(_id, _name, _salary);
    }

    // Get Function
    function getEmployee() public view returns(uint, string memory, uint) {
        return (emp.id, emp.name, emp.salary);
    }
}