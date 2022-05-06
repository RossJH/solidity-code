pragma solidity ^0.4.0;

interface Regulator {
    function chackValue(uint256 amount) returns (bool);

    function loan() returns (bool);
}

contract Bank is Regulator {
    uint256 private myInternalValue;

    function Bank(uint256 amount) {
        value += amount;
    }

    function deposit(uint256 amount) {
        value += amount;
    }

    function withdraw(uint256 amount) {
        if (checkValue(amount)) value -= amount;
    }

    function balance() returns (uint256) {
        return value;
    }

    function checkValue(uint256 amount) returns (bool) {
        return amount >= value;
    }

    function loan() returns (bool) {
        return value > 0;
    }
}

contract MyFirstContract is Bank(10) {
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
