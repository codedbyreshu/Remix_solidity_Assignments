/** Assignment – Student Registration System
Question
Create a Solidity smart contract for a Student Registration System.
Requirements
Create a Struct called Student containing:
id
name (string)
course (string)
address studentAddress
Create an Enum called StudentStatus
Active
Inactive
Create a Mapping to store student details using student ID.
Create a String Array to store course names.
Implement the following functions:
addCourse() → Add course name to the array
registerStudent() → Add student details
Use require() to ensure student ID is not zero
getStudent() → Retrieve student details using ID**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract studentRegistrationSystem {
    enum studentstatus{Active, Inactive}

    struct student{
        uint id;
        string name;
        string course;
        address studentaddress;
        studentstatus status;
    }

    mapping(uint => student) students;

    string[] coursenames;

    function addcourse(string memory _coursenames)public{
        coursenames.push(_coursenames);
    }  

    modifier valid_id(uint _id){
        require(_id!=0, "id cannot be zero");
        _;
    }
    function registerstudent(uint _id, string memory _name, string memory _course, address _studentaddress, studentstatus _status) public valid_id(_id){
        students[_id] = student(_id, _name, _course, _studentaddress,_status);

    }
    function getstudent(uint _id) public view returns(uint, string memory, string memory,address,studentstatus){
        student memory s = students[_id];
        return (s.id,s.name,s.course,s.studentaddress,s.status);

    }

}