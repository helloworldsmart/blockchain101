// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // solidity versions

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value
    uint256 public myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person public pat = Person(7, "Pat");
    Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    Person public jon = Person({favoriteNumber: 12, name: "Jon"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
