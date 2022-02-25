pragma solidity ^0.5.13;

contract LibrariesExample {
    
    mapping(address => uint) public tokenBalance;
    
    constructor() public {
        tokenBalance[msg.sender] = 1;
    }
    
    function sendToken(uint _amount, address _to) public returns(bool) {
        require (tokenBalance[msg.sender] != 0, "There are no tokens to send");
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
        
        return true;
    }  
} 