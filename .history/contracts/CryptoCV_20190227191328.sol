pragma solidity ^0.5.0;

contract CryptoCV {
    uint public taskCount = 0;
    string private name;
    string private description;

    struct Section {
        string name;
        string description;
        uint8 orderNumber;
    }
}