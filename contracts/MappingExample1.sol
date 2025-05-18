
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;


contract MappingExample {
   
   mapping(uint => bool) public myMapping;
   
   function setValueMapping (uint _key) public {
      myMapping[_key] = true;
   }

   mapping (address => bool) public myAddressMapping;

   function setAddressValueMapping() public {
      myAddressMapping[msg.sender] = true;
   }
}