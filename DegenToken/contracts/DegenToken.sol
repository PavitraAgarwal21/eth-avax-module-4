// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20 {
  address public owner ;
    constructor() ERC20("Degen", "DGN") {
        owner = msg.sender ;
    }
modifier onlyOwner {
    require(msg.sender == owner);
    _;
}
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    function decimals() public pure override returns (uint8) {
        return 0;
    }
    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }
    function petsAvailable() external view  {
        console.log("The following pets are available for purchase:");
        console.log("1: cat");
        console.log("2: dog");
        console.log("3: turtle");
    }

    function redeemTokens(uint pet) external payable {
        if (pet == 1) {
            require(this.balanceOf(msg.sender) >= 1000,"You do not have enough  Tokens");
            approve(msg.sender, 1000);
            transferFrom(msg.sender, owner, 1000);
           console.log("You have redeemed for a Cat!");
        } else if (pet == 2) {
            require(this.balanceOf(msg.sender) >= 500,"You do not have enough  Tokens");
            approve(msg.sender, 500);
            transferFrom(msg.sender, owner, 500);
        console.log("You have redeemed for a Dog");
        } else if (pet == 3) {
            require(this.balanceOf(msg.sender) >= 250,"You do not have enough  Tokens");
            approve(msg.sender, 250);
            transferFrom(msg.sender, owner, 250);
        console.log("You have redeemed for a Huntsman Knife!");
        } else {
            console.log("That is not a valid choice");
        }
    }
}
