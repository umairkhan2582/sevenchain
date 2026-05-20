# Example: Meme Token

  Deploy a simple ERC-20 meme token on Seven Chain in under 2 minutes.

  ## Deploy

  ```bash
  cd examples/meme-token
  npm install
  cp .env.example .env  # add your PRIVATE_KEY
  npx hardhat run scripts/deploy.ts --network sevenchain
  ```

  ## What It Does

  Deploys a standard ERC-20 token with a fixed supply to Seven Chain.
  After deployment, the token address can be submitted to the Seven launchpad
  at [theseven.meme/launchpad](https://theseven.meme/launchpad) for trading.

  ## Files

  - `contracts/MemeToken.sol` — ERC-20 with name, symbol, fixed supply
  - `scripts/deploy.ts` — deploy and log the contract address
  - `hardhat.config.ts` — Seven Chain network config
  