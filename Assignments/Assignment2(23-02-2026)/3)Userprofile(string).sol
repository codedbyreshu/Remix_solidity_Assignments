/**Question 3 – String Operations
Create a contract named UserProfile.
Requirements:
Store string public username
Create:
setUsername(string memory _name)
getLength()
compare(string memory _other)
Use keccak256 for comparison.

👉 Test Case:
Set username to "Blockchain"
Compare with "Blockchain" → true
Compare with "Crypto" → false**/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfile {

    // Store username
    string public username;

    // Set username
    function setUsername(string memory _name) public {
        username = _name;
    }

    // Get length of username
    function getLength() public view returns (uint) {
        return bytes(username).length;
    }

    // Compare two strings
    function compare(string memory _other) public view returns (bool) {
        return keccak256(bytes(username)) == keccak256(bytes(_other));
    }
}