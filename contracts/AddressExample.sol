
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract addressExample {

    address myAddress;

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    
    function getMyAddressBalance() public view returns (uint) {
        return myAddress.balance;
    }

}