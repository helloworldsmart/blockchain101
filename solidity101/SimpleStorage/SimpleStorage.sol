// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // solidity versions

contract SimpleStorage {
    // Basic Types: boolean, unit, int, address, bytes
    bool hasFavoriteNumber = false;
    uint favoriteNumber = 69;
    uint256 myFavoriteNumber = 969;
    int256 youFavoriteNumber = -69;
    string favoriteNumberInText = "69";
    // address myAddress = 0xaB1B720;
    bytes32 favorityBytes32 = "cat";

    // favoriteNumber gets initialized to 0 if no value
    uint256 herFavoriteNumber; // 0

    function store(uint256 _herFavoriteNumber) public {
        herFavoriteNumber = _herFavoriteNumber;
    }
}
