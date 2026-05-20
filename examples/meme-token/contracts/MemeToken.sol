// SPDX-License-Identifier: MIT
  pragma solidity ^0.8.24;

  import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
  import "@openzeppelin/contracts/access/Ownable.sol";

  /// @title MemeToken
  /// @notice Simple fixed-supply ERC-20 meme token for Seven Chain
  contract MemeToken is ERC20, Ownable {
      constructor(
          string memory name_,
          string memory symbol_,
          uint256 totalSupply_
      ) ERC20(name_, symbol_) Ownable(msg.sender) {
          _mint(msg.sender, totalSupply_ * 10 ** decimals());
      }

      /// @notice Owner can burn tokens from their own balance
      function burn(uint256 amount) external onlyOwner {
          _burn(msg.sender, amount);
      }
  }
  