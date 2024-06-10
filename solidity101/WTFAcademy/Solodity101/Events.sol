// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Events {
    // 定義 _balances 映射變數，紀錄每個地址的持幣數量
    mapping(address => uint256) public _balances;

    // 定義 Transfer event，紀錄 transfer 交易的轉帳地址，接收地址和轉帳數量
    event Transfer(address indexed from, address indexed to, uint256 value);

    // 定義 _transfer 函數，執行轉帳邏輯
    function _transfer(address from, address to, uint256 amount) external {
        _balances[from] = 1000000; // 給轉帳地址一些初始代幣

        _balances[from] -= amount; // from 地址減去轉帳數量
        _balances[to] += amount; // to 地址加上轉帳數量

        // 釋放事件
        emit Transfer(from, to, amount);
    }
}
