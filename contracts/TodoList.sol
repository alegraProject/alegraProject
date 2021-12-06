pragma solidity ^0.5.0;

contract Todolist {
    uint public taskCount = 0;

    struct Task {   //solidity is statically typed language
       uint id;
       string content;
       bool completed; 
    }

    mapping(uint => Task) public tasks;   // mapping has a key value pair.  data type for a key (unsigned integer) and the task (struct Task).  This is a database

    //use constructor function, it is called when the contract is first deployed
    constructor() public {
        createTask("Let's do this");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}