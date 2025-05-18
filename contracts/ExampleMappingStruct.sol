
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MappginStructExample {

    struct Transaction {
    uint amount;
    uint timestamp;
    }
    
    struct Balance {
    uint totalBalance;
    uint numberDeposits;
    mapping(uint  => Transaction) deposits;
    uint numWithdrawals; 
    mapping(uint => Transaction) withdrawals;
    }


    mapping (address => Balance) public balances;


    function depositMoney() public payable {

    balances[msg.sender].totalBalance += msg.value;

    Transaction memory deposit = Transaction(msg.value, block.timestamp);

    balances[msg.sender].deposits[balances[msg.sender].numberDeposits] = deposit; 

    balances[msg.sender].numberDeposits++;

    }

    function withdrawMoney(address payable _to, uint _amount) public {
        
        balances[msg.sender].totalBalance -= _amount;

        Transaction memory withdral = Transaction(_amount, block.timestamp);

        balances[msg.sender].withdrawals[balances[msg.sender].numWithdrawals] = withdral;

        balances[msg.sender].numWithdrawals++;
        
        _to.transfer(_amount);

    }

    
}