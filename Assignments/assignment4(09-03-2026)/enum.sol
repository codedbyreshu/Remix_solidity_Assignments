// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OrderStatusExample {

    // Enum
    enum OrderStatus { Pending, Shipped, Delivered }

    // Variable
    OrderStatus public status;

    // Set Function
    function setStatus(OrderStatus _status) public {
        status = _status;
    }

    // Get Function
    function getStatus() public view returns(OrderStatus) {
        return status;
    }
}