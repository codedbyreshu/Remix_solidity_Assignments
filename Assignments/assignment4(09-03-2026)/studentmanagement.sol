// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentManagement {

    // Enum
    enum CourseStatus { NotStarted, InProgress, Completed }

    // Struct
    struct Student {
        uint id;
        string name;
        uint age;
        CourseStatus status;
    }

    // Array of students
    Student[] public students;

    // Set Function (Add Student)
    function setStudent(uint _id,string memory _name,uint _age,CourseStatus _status) public {
        students.push(Student(_id, _name, _age, _status));
    }

    // Get Student Details using index
    function getStudent(uint index) public view returns (uint,string memory,uint,CourseStatus) {
    
        Student memory s = students[index];
        return (s.id, s.name, s.age, s.status);
    }

    // Get total number of students
    function getTotalStudents() public view returns (uint) {
        return students.length;
    }
}