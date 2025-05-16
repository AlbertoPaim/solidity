
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract theBlockChainMessenger {
    uint public changeCounter;

    address public owner; 

    string public newMessenger;

    constructor () {
        owner = msg.sender;
    }

    function updateMessenger (string memory _newMessenger)public{
        if(owner == msg.sender){
            changeCounter++; 
            newMessenger = _newMessenger;
        }
    }
}