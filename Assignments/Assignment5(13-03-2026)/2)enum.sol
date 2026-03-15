/**2 Assignment – Enum (Set & Get)
Question
Create a Solidity smart contract to manage order status using Enum.
Requirements:
Create an Enum called OrderStatus with the values:
Pending
Shipped
Delivered
Create a variable to store the order status.
Create a setStatus() function to update the order status.
Create a getStatus() function to retrieve the current order status.
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract manageorder {
    enum orderstatus{Pending,Shipped,Delivered}
    orderstatus status;

    function setStatus(orderstatus _status) public {
        status = _status;
    }
    function getStatus() public view returns(orderstatus){
        return status;
    }
}