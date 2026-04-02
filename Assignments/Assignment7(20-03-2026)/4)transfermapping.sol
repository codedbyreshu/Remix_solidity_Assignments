/**4. Mapping with Address
Create a contract that:
Maintains balances using mapping(address => uint)
Allows deposit and withdrawal
Uses condition to check sufficient balance
**/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract wallet{
    uint public balance;
    int public netTransaction;
    bool public  Iswalletopen;

     constructor(){
        balance = 20000;
        Iswalletopen = true;
    }
    // mapping
    mapping(address=>uint) Balance;

    //modifier
    modifier onlyopen{
        require(Iswalletopen,"wallet is closed");
        _;
    }
    //deposit
    function deposit(uint _amount) public onlyopen{
        balance += _amount;
        netTransaction += int(_amount);
    }

    //Withdraw
    function withdraw(uint _amount)public onlyopen{
        require(_amount<= balance,"Insufficientbalance");
        balance -= _amount;
        netTransaction -=int(_amount);
    }

   
}