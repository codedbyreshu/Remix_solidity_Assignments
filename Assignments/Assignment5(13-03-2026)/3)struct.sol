/** 3️⃣ Assignment – Struct (Set & Get)
Question
Create a Solidity smart contract to store student details using Struct.
Requirements:
Create a Struct called Student containing:
id
name
Create a variable of the struct.
Create a setStudent() function to store student details.
Create a getStudent() function to retrieve the student details.
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract studentdetails {
    struct Student {
        uint256 id; 
        string name;
        uint256 age;
    }
    Student public students;
    function setstudent(uint256 _id,string memory _name,uint256 _age) public {
        students = Student(_id,_name,_age);
    }
    function getStudent() public view returns (uint256,string memory,uint256){
        return (students.id,students.name,students.age);
    }    
}