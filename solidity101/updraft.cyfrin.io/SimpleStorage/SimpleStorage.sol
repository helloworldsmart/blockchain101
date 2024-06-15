// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // solidity versions

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value
    uint256 public favoriteNumber; // 0

    function store(uint256 _herFavoriteNumber) public {
        herFavoriteNumber = _herFavoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
