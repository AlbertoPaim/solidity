
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;


contract Wallet {
   address sender;
   uint valueSent;

   function payContract() public payable {
      sender = msg.sender;
      valueSent = msg.value;
   }

}

contract PaymenteReceived {
   address public from;
   uint public amount;

   constructor(address _from, uint _amount){
      from = _from;
      amount = _amount;
   }


}
