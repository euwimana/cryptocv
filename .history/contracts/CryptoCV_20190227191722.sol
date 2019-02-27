pragma solidity ^0.5.0;

contract CryptoCV {
    uint public taskCount = 0;
    string name;
    string description;

    struct Section {
        string name;
        string description;
        uint8 orderNumber;
    }

    mapping(uint => Section) public sections;

    function createSection(string memory _name) public {
        
    }
}