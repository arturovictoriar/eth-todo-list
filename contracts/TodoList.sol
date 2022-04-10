// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract TodoList {
    struct Task {
        uint id;
        string content;
        bool completed;
    }

    uint public taskCount = 0;
    mapping(uint => Task) public tasks;

    constructor() public {
        createTask('Check out arturovictoriar.com');
    }

    function createTask(string memory _content) public {
        taskCount++;

        tasks[taskCount] = Task(taskCount, _content, false);
    }


}