/** 
4️⃣Capstone Assignment – Student Course Management System
Question
Create a Solidity smart contract to manage student course details using Struct, Array, and Enum.
Requirements
Create an Enum called CourseStatus with values:
NotStarted
InProgress
Completed
Create a Struct called Student containing:
id
name
age
CourseStatus status
Create an Array to store multiple students.
Implement the following functions:
addStudent() → Add student details into the array
getStudent() → Retrieve student details using index
getTotalStudents() → Return total number of students
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract studentcoursedetailsc {
    struct student{
        uint id;
        string name;
        uint age;
        coursestatus status;
        }
        student[] student1;

        enum coursestatus{NotStarted,InProgress,Completed}
        coursestatus status;

        function addstudent(uint _id,string memory _name, uint _age, coursestatus _status) public{
            student1.push(student(_id,_name,_age,_status));
        }

        function setstudent(uint _index) public  view returns(uint256,string memory,uint256,coursestatus){
            return (student1[_index].id,student1[_index].name,student1[_index].age,student1[_index].status);
        }
        /** 

        function setstudent(uint _index) public  view returns(uint256,string memory,uint256,coursestatus){
            student memory s = student1[_index];
            return (s.id,s.name,s.age,s.status);

        **/
        function totalstudents() public view returns(uint){
            return student1.length;

        }   

    }
