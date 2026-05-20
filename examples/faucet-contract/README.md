# Example: On-Chain Faucet

  Deploy a smart-contract faucet that drips your token to developers — no backend needed.

  ## Deploy

  ```bash
  cd examples/faucet-contract
  npm install
  cp .env.example .env
  npx hardhat run scripts/deploy.ts --network sevenchain
  ```

  ## How It Works

  - Owner deploys the faucet and funds it with tokens
  - Anyone calls `drip()` — gets 0.1 tokens, once per 24 hours
  - Owner can `refill()` or `withdraw()` at any time
  