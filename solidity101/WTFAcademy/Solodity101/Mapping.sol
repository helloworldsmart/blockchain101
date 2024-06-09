// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Mapping {
    mapping(uint => address) public idToAddress;
    mapping(address => address) public swapPair;

    // Fail:
    // struct Student {
    //     uint256 id;
    //     uint256 score;
    // }
    // mapping(Student => uint) public testVar;

    function writeMap(uint _key, address _value) public {
        idToAddress[_key] = _value;
    }
}
