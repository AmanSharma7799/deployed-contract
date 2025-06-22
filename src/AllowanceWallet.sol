// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract AllowanceWallet {
    address public owner;
    mapping(address => uint256) public allowances;

    event AllowanceSet(address indexed who, uint256 amount);
    event Deposit(address indexed from, uint256 amount);
    event Withdraw(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Owner can deposit ETH
    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    // Owner sets user allowance
    function setAllowance(address _who, uint256 _amount) external onlyOwner {
        allowances[_who] = _amount;
        emit AllowanceSet(_who, _amount);
    }

    // User withdraws up to their allowance
    function withdraw(uint256 _amount) external {
        require(allowances[msg.sender] >= _amount, "Exceeds allowance");
        require(address(this).balance >= _amount, "Not enough balance");

        allowances[msg.sender] -= _amount;

        (bool sent, ) = msg.sender.call{value: _amount}("");
        require(sent, "Failed to send Ether");

        emit Withdraw(msg.sender, _amount);
    }

    // View contract balance
    function contractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
