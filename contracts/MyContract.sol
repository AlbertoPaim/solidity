
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract MyContract {

string public ourString = "Hello World!";

function changeString (string memory _updateString) public {
    ourString = _updateString;
    }
}
