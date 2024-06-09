// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract InitialValue {
    // Value Types
    bool public _bool; // false
    string public _string; // ""
    int public _int; // 0
    uint public _uint; // 0
    address public _address; // 0x0000....

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum; // 第一個元素 0

    function fi() internal {} // internal空白方程
    function fe() external {} // external空白方程

    // Reference Types
    uint[8] public _staticArray; // 所有成員設為其默認值的靜態數組 [0,0,0,0,0,0,0,0]
    uint[] public _dynamicArray; // []
    mapping(uint => address) public _mapping; // 所有元素都為其默認值的 mapping
    // 所有成員設為其默認值的結構體 0, 0
    struct Student {
        uint256 id;
        uint256 score;
    }
    Student public student;
}
