// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract CRUD {
    struct User {
        string name;
        uint8 age;
    }

    mapping(address id => User user) public users;

    function createUser(string memory _name, uint8 _age) public {
        users[msg.sender] = User(_name, _age);
    }

    function readUser() public view returns (User memory) {
        return users[msg.sender];
    }

    function updateUser(string memory _newName) public {
        users[msg.sender].name = _newName;
    }

    function deleteUser() public {
        delete users[msg.sender];
    }
}
