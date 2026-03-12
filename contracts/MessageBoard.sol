// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MessageBoard {

    struct Message {
        address user;
        string text;
        uint256 time;
    }

    Message[] public messageList;

    function post(string memory _text) public {
        messages.push(Message(msg.sender,_text,block.timestamp));
    }

    function totalMessages() public view returns(uint){
        return messages.length;
    }

    event MessagePosted(address user, string message);
    } 

    emit MessagePosted(msg.sender, message);
    }

    function getMessageCount() public view returns(uint){
    return messageList.length;
    }

    require(bytes(message).length > 0);
    }
}
// increment counter value
// Simple on-chain message board on Base
