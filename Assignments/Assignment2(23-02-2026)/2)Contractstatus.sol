/**Question 2 – Boolean Control
Create a contract named ContractStatus.
Requirements:
Create bool public isActive
Constructor should set it to true
Create:
activate()
deactivate()
toggleStatus()
Add a function restrictedAction() that only works if contract is active (use require())

👉 Test Case:
Deactivate contract
Try calling restricted function
Observe revert message**/

// SPDX-License-Identifier: MIT

 pragma solidity ^0.8.0;

contract contractstatus {
    // Boolean state variable
    bool public isActive;

    // Constructor - runs only once during deployment
    constructor() {
         isActive = true;    // default value set to true
   }

    // Activate the contract
    function activate() public {
        isActive = true;
    }

    // Deactivate the Contract
    function deactivate() public{
        isActive = false;
    }

    // Toggle status (switch true <-> false)
    function togglestatus() public{
        isActive = !isActive;
    }
    function restrictedAction() public view returns (bool) {
        require(isActive, "Contract is not active!");
        return isActive;
}
    
}
