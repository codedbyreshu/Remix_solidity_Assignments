/**
2. If-Else + Struct + Mapping
Create a contract that:
Stores student details (name, marks, result) using struct + mapping
Uses if-else to assign result (Distinction / Pass / Fail)
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDetails {

    struct Student {
        string name;
        uint marks;
        string result;
    }

    // mapping name => student
    mapping(string => Student) public students;

    // set student details
    function setStudentDetails(string memory _name, uint _marks) public {

        string memory res;

        // if-else logic
        if (_marks >= 80) {
            res = "Distinction";
        } 
        else if (_marks >= 60) {
            res = "Pass";
        } 
        else {
            res = "Fail";
        }

        // store data
        students[_name] = Student(_name, _marks, res);
    }

    // get student details
    function getStudentDetails(string memory _name) 
        public view returns (string memory, uint, string memory) 
    {
        Student memory s = students[_name];
        return (s.name, s.marks, s.result);
    }
}
