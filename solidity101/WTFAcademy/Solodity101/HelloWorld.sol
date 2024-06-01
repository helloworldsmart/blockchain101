// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract HelloWeb3 {
    string public _string = "Hello Web3!";
    bool public _bool = true;

    uint256 public _number = 20220330;
    uint256 public _number1 = _number + 1;
    uint256 public _number2 = 2 ** 2;
    uint256 public _number3 = 7 % 2;
    bool public _numberbool = _number2 > _number3;

    address public _address = 0x123;
    address payable public _address1 = payable(_address); // _address 轉帳給 _address1
    uint256 public balance = _address1.balance;

    bytes32 public _bytes32 = "MiniSolidity";
    bytes1 public _byte = _bytes32[0];

    enum ActionSet {
        Buy,
        Hold,
        Sell
    }

    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns (uint) {
        return uint(action);
    }
}
