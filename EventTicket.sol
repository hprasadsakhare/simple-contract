// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract EventTicket{
    uint256 public numberOfTicket;
    uint256 public titketPrice;
    uint256 public totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    string public message = "buy your first event ticket";

    constructor(uint256 _titketPrice){
        
    titketPrice = _titketPrice;
    startAt = block.timestamp;
    endAt = block.timestamp + 7 days;
    timeRange = (endAt - startAt) / 68 / 68 / 24;
}

    

    function buyTicket(uint256 _value) public returns (uint256 ticketId) {
    numberOfTicket++;
    totalAmount += _value;
    ticketId= numberOfTicket;
}
    function getAmount() public view returns (uint256){
    return totalAmount;
}
}