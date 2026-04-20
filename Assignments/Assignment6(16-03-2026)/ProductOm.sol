/**Assignment – Product Order Management
Question
Create a Solidity smart contract to manage product orders.
Requirements
Create a Struct called Order
orderId
productName (string)
quantity
address customer
Create an Enum called OrderStatus
Pending
Shipped
Delivered
Create a Mapping to store orders using orderId.
Create a String Array to store product names.
Implement functions:
addProduct() → Add product name to array
createOrder() → Add order details
Use require() to ensure quantity > 0
getOrder() → Retrieve order details**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract ProductOrderManagement {

    enum orderstatus{Pending, Shipped, Delivered}

    struct order{
        uint orderid;
        string productname;
        uint quantity;
        address customer;
        orderstatus status;
    }

    mapping (uint => order) orders;

    string[] productnames;

    modifier validquantity(uint _quantity){
        require(_quantity>0,"quantity should be greater than zero");
    _;
    }
    function addproduct(string memory _productnames) public {
        productnames.push(_productnames);
    }
    function createorder(uint _orderid,string memory _productname,uint _quantity,address _customer,orderstatus _status) public validquantity(_quantity) {
        orders[_orderid]=order(_orderid,_productname,_quantity,_customer,_status);
    }
    function getorder (uint _orderid)public view returns(uint, string memory, uint,address,orderstatus){
        order memory o = orders[_orderid];
        return (o.orderid,o.productname,o.quantity,o.customer,o.status);
    }

}