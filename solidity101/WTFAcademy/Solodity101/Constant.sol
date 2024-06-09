// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Constant {
    // constant 變量必須在聲明的時候初始化，之後不能改變
    uint256 public constant CONSTANT_NUM = 10;
    string public constant CONSTANT_STRING = "0xAA";
    bytes public constant CONSTANT_BYTES = "WTF";
    address public constant CONSTANT_ADDRESS =
        0x0000000000000000000000000000000000000000;

    // immutable 變量可以在 constructor 裡初始化，之後不能改變
    uint256 public immutable IMMUTABLE_NUM = 9999999999;
    address public immutable IMMUTABLE_ADDRESS;
    uint256 public immutable IMMUTABLE_BLOCK;
    uint256 public immutable IMMUTABLE_TEST;

    // 利用 constructor 初始化 immutable 變量，因此不能改變
    constructor() {
        IMMUTABLE_ADDRESS = address(this);
        IMMUTABLE_NUM = 1118;
    }

    function test() public pure returns (uint256) {
        uint256 what = 9;
        return (what);
    }
}
