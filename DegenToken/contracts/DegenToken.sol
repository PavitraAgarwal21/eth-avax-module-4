// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20, Ownable {
    address public ownerd ;
    constructor() ERC20("Degen", "DGN") {
        _mint(msg.sender, 1000*(10**18));
    }
    function burn(address _address , uint256 _amount) public {
        _burn(_address , _amount) ;
    }
    function redeem(address _address,uint256 amount) public {
        transfer(_address, amount);
    }
}
