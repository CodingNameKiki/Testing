// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract SimpleContract {

    constructor(address _owner) {
        owner = _owner;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not Owner");
        _;
    }

    address public immutable owner;

    uint256 public balance = 50;

    function withdraw() public onlyOwner {
        balance = 0;
    }
}

