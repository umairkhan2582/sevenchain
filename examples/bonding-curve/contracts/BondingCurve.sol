// SPDX-License-Identifier: MIT
  pragma solidity ^0.8.24;

  /// @title BondingCurve
  /// @notice Simple constant-product bonding curve for meme tokens on Seven Chain
  /// @dev Price = reserve / supply  (linear approximation)
  contract BondingCurve {
      string  public name;
      string  public symbol;
      uint256 public totalSupply;
      uint256 public reserve;   // SEVEN held in contract

      mapping(address => uint256) public balanceOf;

      event Buy(address indexed buyer,  uint256 sevenIn,  uint256 tokensOut);
      event Sell(address indexed seller, uint256 tokensIn, uint256 sevenOut);

      constructor(string memory _name, string memory _symbol) payable {
          name      = _name;
          symbol    = _symbol;
          reserve   = msg.value;
          // Mint initial supply to deployer proportional to seed reserve
          uint256 initial = msg.value * 1000;
          totalSupply      = initial;
          balanceOf[msg.sender] = initial;
      }

      /// @notice Buy tokens by sending SEVEN (native)
      function buy() external payable {
          require(msg.value > 0, "Send SEVEN to buy");
          uint256 tokensOut = (msg.value * totalSupply) / reserve;
          reserve      += msg.value;
          totalSupply  += tokensOut;
          balanceOf[msg.sender] += tokensOut;
          emit Buy(msg.sender, msg.value, tokensOut);
      }

      /// @notice Sell tokens back for SEVEN
      function sell(uint256 amount) external {
          require(balanceOf[msg.sender] >= amount, "Insufficient balance");
          uint256 sevenOut = (amount * reserve) / totalSupply;
          balanceOf[msg.sender] -= amount;
          totalSupply  -= amount;
          reserve      -= sevenOut;
          payable(msg.sender).transfer(sevenOut);
          emit Sell(msg.sender, amount, sevenOut);
      }

      /// @notice Current price in SEVEN per token (18-decimal scaled)
      function currentPrice() external view returns (uint256) {
          if (totalSupply == 0) return 0;
          return (reserve * 1e18) / totalSupply;
      }
  }
  