
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;


contract SmartMoney {
   
   uint public balance;
   function deposit () public payable {
    balance += msg.value;
   }

   function getContractBalance () public view  returns(uint){
    return address(this).balance; 
   }

   function withdrawAll () public {
    address payable to = payable (msg.sender);
    to.transfer(getContractBalance());
   }

   function withdrawToAddress ( address payable to) public {
    to.transfer(getContractBalance());
   }
   
}
