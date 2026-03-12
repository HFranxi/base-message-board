// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MessageBoard {

    struct Message {
        address user;
        string text;
        uint256 time;
    }

    Message[] public messages;

    function post(string memory _text) public {
        messages.push(Message(msg.sender,_text,block.timestamp));
    }

    function totalMessages() public view returns(uint){
        return messages.length;
    }
}
// increment counter value
// Simple on-chain message board on Base
