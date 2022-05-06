pragma solidity ^0.4.0;

contract MyFirstContract {
    string private name;
    uint256 private age;

    function setName(string newName) {
        name = newName;
    }

    function getName() returns (string) {
        return name;
    }

    function setAge(uint256 newAge) {
        age = newAge;
    }

    function getAge() returns (uint256) {
        return age;
    }
}
