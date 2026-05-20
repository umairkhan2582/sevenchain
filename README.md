<div align="center">

  <img src="https://theseven.meme/logo.png" width="80" alt="Seven Chain" />

  # ⚡ Seven Chain

  **Chain ID 70007 · Mainnet Live · Zero-Fee Perp Futures · Meme Launchpad · BSC Bridge**

  [![Chain ID](https://img.shields.io/badge/Chain%20ID-70007-yellow?style=for-the-badge)](https://theseven.meme/developers)
  [![Mainnet](https://img.shields.io/badge/Status-Mainnet%20Live-brightgreen?style=for-the-badge)](https://theseven.meme/seven-network)
  [![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)
  [![Hackathon](https://img.shields.io/badge/Hackathon-Coming%20Soon-orange?style=for-the-badge)](HACKATHON.md)

  [**Developer Hub**](https://theseven.meme/developers) · [**Block Explorer**](https://theseven.meme/blockchain/explorer) · [**Faucet**](https://theseven.meme/developers#faucet) · [**Whitepaper**](https://theseven.meme/whitepaper) · [**Telegram**](https://t.me/SevenBlockChain)

  </div>

  ---

  ## What is Seven Chain?

  Seven Chain is a purpose-built L1 blockchain powering the [TheSeven.meme](https://theseven.meme) trading platform. It runs a live, production-grade ecosystem with:

  - **Zero-fee perpetual futures** — up to 2001× leverage on 100+ tokens
  - **Meme token launchpad** — deploy a bonding-curve token in one click
  - **BSC → Seven Chain bridge** — sBNB and sUSDT already bridgeable
  - **Validator network** — stake SEVEN, seal blocks, earn rewards
  - **Full JSON-RPC compatibility** — plug in Hardhat, Foundry, ethers.js, viem

  ## Network Details

  | Parameter | Value |
  |---|---|
  | **Network Name** | Seven Chain |
  | **Chain ID** | 70007 |
  | **RPC URL** | `https://theseven.meme/api/seven-chain/jsonrpc` |
  | **Currency Symbol** | SEVEN |
  | **Block Explorer** | https://theseven.meme/blockchain/explorer |
  | **Bridge (BSC→Seven)** | https://theseven.meme/bridge |

  ## Quick Start

  ### 1 — Add to MetaMask
  Go to **[theseven.meme/developers](https://theseven.meme/developers)** and click **"Add Seven Chain to MetaMask"** — one click, everything pre-filled.

  ### 2 — Get Test SEVEN from the Faucet
  ```bash
  curl -X POST https://theseven.meme/api/faucet/drip \
    -H "Content-Type: application/json" \
    -d '{"wallet": "0xYOUR_WALLET"}'
  # → { "success": true, "amount": 0.1, "token": "SEVEN" }
  ```
  0.1 SEVEN per wallet per 24 hours. Instant. No sign-up.

  ### 3 — Configure Hardhat
  ```typescript
  // hardhat.config.ts
  import { HardhatUserConfig } from "hardhat/config";

  const config: HardhatUserConfig = {
    solidity: "0.8.24",
    networks: {
      sevenchain: {
        url: "https://theseven.meme/api/seven-chain/jsonrpc",
        chainId: 70007,
        accounts: [process.env.PRIVATE_KEY!],
      },
    },
  };
  export default config;
  ```

  ### 4 — Deploy
  ```bash
  npx hardhat run scripts/deploy.ts --network sevenchain
  ```

  Or with Foundry:
  ```bash
  forge script script/Deploy.s.sol --rpc-url https://theseven.meme/api/seven-chain/jsonrpc --broadcast
  ```

  ---

  ## Example dApps

  | # | Project | Description | Folder |
  |---|---|---|---|
  | 1 | **Meme Token** | Deploy an ERC-20 meme token that auto-lists on the Seven launchpad | [`/examples/meme-token`](examples/meme-token) |
  | 2 | **Bonding Curve** | Buy/sell curve with on-chain price discovery, same model as the platform | [`/examples/bonding-curve`](examples/bonding-curve) |
  | 3 | **Faucet Contract** | On-chain faucet — drip tokens to developers via smart contract | [`/examples/faucet-contract`](examples/faucet-contract) |

  ---

  ## Ecosystem Repos

  | Repo | Description |
  |---|---|
  | [**seven-chain-node**](https://github.com/umairkhan2582/seven-chain-node) | Run a validator node — seal blocks, earn SEVEN rewards |
  | [**seven-chain-solver**](https://github.com/umairkhan2582/seven-chain-solver) | Run a bridge solver — fill cross-chain intents, earn 0.3% fees |
  | [**sevenchain**](https://github.com/umairkhan2582/sevenchain) | ← You are here — developer docs, examples, hackathon |

  ---

  ## 🏆 Hackathon — Coming Soon

  We're planning the **first Seven Chain Hackathon**. Build a dApp on Seven Chain, win prizes in SEVEN.

  👉 **[Read HACKATHON.md](HACKATHON.md)** — themes, prize pool details, and waitlist.

  ---

  ## Community

  - **Telegram** — [t.me/SevenBlockChain](https://t.me/SevenBlockChain)
  - **LinkedIn** — [linkedin.com/company/theseven-meme](https://www.linkedin.com/company/theseven-meme)
  - **Instagram** — [@the_seven_meme](https://www.instagram.com/the_seven_meme)
  - **GitHub Discussions** — ask questions, share ideas, get feedback

  ---

  ## Contributing

  PRs are welcome. Open an issue first for large changes. See [CONTRIBUTING.md](CONTRIBUTING.md).

  ---

  <div align="center">
  Built with ⚡ by the <a href="https://theseven.meme">TheSeven.meme</a> team
  </div>
  