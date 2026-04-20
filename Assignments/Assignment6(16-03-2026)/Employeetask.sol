/**Assignment – Employee Task Tracking System
Question
Create a Solidity smart contract for an Employee Task Tracking System.
Requirements
Create a Struct called Task
taskId
taskName (string)
employeeName (string)
address employee
Create an Enum called TaskStatus
Pending
InProgress
Completed
Create a Mapping to store tasks using taskId.
Create a String Array to store task names.
Implement the following functions:
addTaskName() → Add task name to array
createTask() → Store task details
Use require() to ensure taskId is valid
getTask() → Retrieve task details**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Employeetask{
    enum Taskstatus{Pending,Inprogress,Completed}

    struct Task{
        uint taskid;
        string taskname;
        string employeename;
        address employee;
        Taskstatus status;
    }

    mapping(uint => Task)Tasks;

    string[] tasknames;
    
    modifier validtask(uint _taskid){
        require(_taskid > 0,"Invalid taskid");
        _;
    }

    function addtaskname(string memory _tasknames)public{
        tasknames.push(_tasknames);
    }

    function createtask (uint _taskid, string memory _taskname,string memory _employeename,address _employee,Taskstatus _status) public validtask( _taskid) {
        Tasks[_taskid] = Task(_taskid,_taskname,_employeename,_employee,_status);   

    }
    function gettask(uint _taskid)public view returns(uint,string memory,string memory,address, Taskstatus){
        Task memory t = Tasks[_taskid];
        return (t.taskid,t.taskname,t.employeename,t.employee,t.status);
    }
}