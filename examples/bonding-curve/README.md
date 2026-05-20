# Example: Bonding Curve

  A simple x*y=k style bonding curve contract where price rises as supply is bought.
  Same model used by the Seven Chain meme launchpad.

  ## Deploy

  ```bash
  cd examples/bonding-curve
  npm install
  cp .env.example .env
  npx hardhat run scripts/deploy.ts --network sevenchain
  ```

  ## How It Works

  - Users call `buy()` with SEVEN — contract mints tokens at current price
  - Price increases with every buy (curve: price = reserve / supply)
  - Users call `sell(amount)` — contract burns tokens, returns SEVEN
  - No central order book needed — price is always on-chain

  ## Files

  - `contracts/BondingCurve.sol` — buy/sell curve logic
  - `scripts/deploy.ts` — deploy with initial reserve
  