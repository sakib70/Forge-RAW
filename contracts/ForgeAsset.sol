// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ForgeAsset is ERC20, Ownable {
    string public physicalLocation;
    uint256 public valuation;

    constructor(
        string memory name, 
        string memory symbol, 
        uint256 _valuation, 
        string memory _location
    ) ERC20(name, symbol) {
        valuation = _valuation;
        physicalLocation = _location;
        // Mint the total supply to the issuer (1 token = 1 fractional share)
        _mint(msg.sender, 1000000 * 10**decimals());
    }
}
