// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SubwaySurfer is ERC20, Ownable {

    uint public totalCoins = 100;
    uint public boosters = 0;

    constructor(address contractOwner) ERC20("SubwaySurfer", "SS") Ownable(contractOwner) {
        _mint(contractOwner, totalCoins);
    }

    function collectCoin(uint amount) public onlyOwner {
        _mint(msg.sender, amount);
        totalCoins += amount;
    }

    function buyBooster() public {
        require(totalCoins >= 10, "Balance is insufficient to buy booster");
        _burn(msg.sender, 10);
        boosters++;
        totalCoins -= 10;
    }

   function dropCoin(uint amount) public {
        _burn(msg.sender, amount);
        totalCoins -= amount;
    }

}
