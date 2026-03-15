/** Question 1 – Integer (uint & int)
Create a contract named FinanceTracker.
Requirements:
Store:
uint public totalBalance
int public profitOrLoss
Add a function deposit(uint amount) to increase balance.
Add a function updateProfit(int amount) to update profit or loss.
Add a function getStatus() that returns both values.

👉 Test Case:
Deposit 500
Update profit -200
Check final values**/

// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

contract financetracker {

    //Unsigned Integer (only positive)
    uint public totalbalance;

    // Signed Integer (positive & negative)
    int public profitorloss;    

    // Constructor - runs only once during deployment
    constructor() {
        totalbalance = 1000;   // uint example
        profitorloss = -300;   //int example
    }
    // Add amount to balance (uint)
    function deposit (uint _amount) public {
        totalbalance += _amount;
    
    }
    // Update profit or loss (int)
    function updateprofit (int _amount) public {
        profitorloss += _amount;

    }

    function status() public view returns (uint, int) {
        return (totalbalance,profitorloss);
    
}

}