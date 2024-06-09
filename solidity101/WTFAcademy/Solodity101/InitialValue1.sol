// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract InitialValue1 {
    // delete操作符
    bool public _bool2 = true;

    address public _address = address(1);

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }
    ActionSet public _enum = ActionSet.Buy; // 第一個元素 0

    struct Student {
        uint256 id;
        uint256 score;
    }
    Student public student = Student(10, 225);

    uint[8] public _staticArray = [1, 2, 3, 4, 5, 6, 7, 8];

    function d_bool() external {
        delete _bool2; // delete 會讓 _bool2 默認值，false
    }

    function d_address() external {
        delete _address; // delete 會讓 _address 默認值，address(0)
    }

    function d_enum() external {
        delete _enum; // delete 會讓 _enum 默認值，第一個 enum 值 Buy 的下標0
    }

    function d_student() external {
        delete student; // delete 會讓 student 默認值，student(0, 0)
    }

    function d_staticArray() external {
        delete _staticArray; // delete 會讓 student 默認值,[0,0,0,0,0,0,0,0]
    }
}
