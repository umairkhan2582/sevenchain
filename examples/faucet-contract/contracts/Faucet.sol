// SPDX-License-Identifier: MIT
  pragma solidity ^0.8.24;

  import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
  import "@openzeppelin/contracts/access/Ownable.sol";

  /// @title Faucet
  /// @notice On-chain token faucet — drips tokens to developers, 1x per 24h per address
  contract Faucet is Ownable {
      IERC20  public token;
      uint256 public dripAmount  = 0.1 ether; // 0.1 tokens (18 decimals)
      uint256 public cooldown    = 24 hours;

      mapping(address => uint256) public lastDrip;

      event Dripped(address indexed to, uint256 amount);

      constructor(address tokenAddress) Ownable(msg.sender) {
          token = IERC20(tokenAddress);
      }

      /// @notice Request a drip — once per cooldown period
      function drip() external {
          require(block.timestamp >= lastDrip[msg.sender] + cooldown, "Cooldown active");
          require(token.balanceOf(address(this)) >= dripAmount, "Faucet empty");
          lastDrip[msg.sender] = block.timestamp;
          token.transfer(msg.sender, dripAmount);
          emit Dripped(msg.sender, dripAmount);
      }

      /// @notice Seconds until address can drip again (0 = ready)
      function waitTime(address addr) external view returns (uint256) {
          uint256 next = lastDrip[addr] + cooldown;
          return block.timestamp >= next ? 0 : next - block.timestamp;
      }

      function setDripAmount(uint256 amount) external onlyOwner { dripAmount = amount; }
      function setCooldown(uint256 seconds_) external onlyOwner { cooldown = seconds_; }
      function withdraw() external onlyOwner { token.transfer(owner(), token.balanceOf(address(this))); }
  }
  