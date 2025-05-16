
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MyContract {

string public ourString = "Hello World!";

function compareStrings (string memory _newString) public view returns (bool ){
    
return keccak256(abi.encodePacked(_newString)) == keccak256(abi.encodePacked(ourString));

}

}
