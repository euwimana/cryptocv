pragma solidity ^0.5.0;

contract CryptoCV {
    string public name;
    string public contactNo;
    string public email;

    struct Section {
        uint8 sId;
        string name;
    }

    mapping(uint => Section) public sections;

    event CVUpdated(
        uint sId,
        string _name
    );

    constructor(string memory _name, string memory _contactNo, string memory _email) public {
        name = _name;
        contactNo = _contactNo;
        email = _email;
    }

    function createSection(uint8 _sId, string memory _name) public {
        sections[_sId] = Section(_sId, _name);
        emit CVUpdated(_sId, _name);
    }
}