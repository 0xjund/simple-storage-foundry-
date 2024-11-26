//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 internal myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; //struct-mapping visibility name of variable remember arrays can be dynamic or static
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _myFavoriteNumber) public virtual {
        myFavoriteNumber = _myFavoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoritenumber) public {
        listOfPeople.push(Person(_favoritenumber, _name));
        nameToFavoriteNumber[_name] = _favoritenumber;
    }
}
