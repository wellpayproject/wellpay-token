/*
 SPDX-License-Identifier: MIT
*/

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title WellPay (WELL)
 * @author WellPay Project
 * @notice Fixed-supply ERC-20 utility token deployed on Base
 * @dev No minting, no rebasing, no transaction fees
 */
contract WellPay is ERC20, Ownable {

    uint256 public constant MAX_SUPPLY = 100_000_000 * 10 ** 18;

    constructor() ERC20("WellPay", "WELL") Ownable(msg.sender) {
        _mint(msg.sender, MAX_SUPPLY);
    }
}
