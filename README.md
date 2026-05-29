<div align="center">

  <img src="https://theseven.meme/logo.png" width="80" alt="Seven Chain" />

  # ⚡ Seven Chain

  **Chain ID 70007 · Mainnet Live · Zero-Fee Perp Futures · Meme Launchpad · BSC Bridge**

  [![Chain ID](https://img.shields.io/badge/Chain%20ID-70007-yellow?style=for-the-badge)](https://theseven.meme/developers)
  [![Mainnet](https://img.shields.io/badge/Status-Mainnet%20Live-brightgreen?style=for-the-badge)](https://theseven.meme/seven-network)
  [![Version](https://img.shields.io/badge/Version-2.0.1-orange?style=for-the-badge)](https://github.com/umairkhan2582/sevenchain/releases)
  [![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)
  [![Hackathon](https://img.shields.io/badge/Hackathon-Coming%20Soon-purple?style=for-the-badge)](HACKATHON.md)

  [**Developer Hub**](https://theseven.meme/developers) · [**Block Explorer**](https://theseven.meme/blockchain/explorer) · [**Faucet**](https://theseven.meme/developers#faucet) · [**Whitepaper**](https://theseven.meme/whitepaper) · [**Telegram**](https://t.me/SevenBlockChain)

</div>

---

## 🚀 v2.0.1 — May 2026

- **V3 Bridge live** — `0x41A70A6bE222174D8369A90fE91017E8Fb74606f` on BNB Chain, non-upgradeable
- **Dynamic price engine** — SEVEN price moves $0.05 per token traded (AMM-style)
- **Live chart** — real candle data from all on-chain trades
- **Staking live** — stake SEVEN at [theseven.meme/staking](https://theseven.meme/staking)
- **Validator program open** — [apply now](https://theseven.meme/become-validator) while the genesis set is forming

---

## What is Seven Chain?

Seven Chain is a purpose-built L1 blockchain powering the [TheSeven.meme](https://theseven.meme) trading platform. It runs a live, production-grade ecosystem with:

- **Zero-fee perpetual futures** — up to 2001× leverage on 100+ tokens
- **Meme token launchpad** — deploy a bonding-curve token in one click
- **BSC → Seven Chain bridge** — sBNB and sUSDT already bridgeable (V3 contract)
- **Validator network** — stake SEVEN, seal blocks, earn rewards
- **Full JSON-RPC compatibility** — plug in Hardhat, Foundry, ethers.js, viem

---

## Network Details

| Parameter | Value |
|---|---|
| **Network Name** | Seven Chain |
| **Chain ID** | 70007 |
| **RPC URL** | `https://theseven.meme/api/seven-chain/jsonrpc` |
| **Currency Symbol** | SEVEN |
| **Block Explorer** | https://theseven.meme/blockchain/explorer |
| **Bridge (BSC→Seven)** | https://theseven.meme/bridge |
| **Bridge Contract (BNB Chain)** | `0x41A70A6bE222174D8369A90fE91017E8Fb74606f` |

---

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
forge script script/Deploy.s.sol \
  --rpc-url https://theseven.meme/api/seven-chain/jsonrpc \
  --broadcast
```

---

## Validators & Staking

Seven Chain is in **early launch phase** and actively growing its validator set. Genesis validators are onboarding now.

| Resource | URL |
|---|---|
| Apply as Validator | https://theseven.meme/become-validator |
| Stake SEVEN | https://theseven.meme/staking |
| Buy SEVEN | https://theseven.meme/spot/seven |

Validators earn:
- **0.0003 SEVEN** per block (blocks with real user transactions)
- **0.0004 BNB** per bridge trade relay
- Staking multiplier up to **3×** based on SEVEN staked

Run the **[seven-chain-node](https://github.com/umairkhan2582/seven-chain-node)** to participate as a validator.

---

## Bridge — V3

| Parameter | Value |
|---|---|
| BNB Chain lock contract | `0x41A70A6bE222174D8369A90fE91017E8Fb74606f` |
| Seven Chain receiver | `0x968A78d10C7A8b05822FA4ED2F6ECC46a9102afE` |
| Design | Non-upgradeable, no admin key, no proxy |
| Bridge UI | https://theseven.meme/bridge |
| Solver repo | [seven-chain-solver](https://github.com/umairkhan2582/seven-chain-solver) |

Run a **[bridge solver](https://github.com/umairkhan2582/seven-chain-solver)** to earn relay fees on every settled intent — no permission required.

---

## SEVEN Token

| Parameter | Value |
|---|---|
| Symbol | SEVEN |
| Chain | Seven Chain (native) + BNB Chain (BSC-20) |
| BSC Contract | `0x441c7b89b2dcb6a65f9e144b4d67bbe7b5494444` |
| Price | Dynamic — AMM-style ($0.05 impact per SEVEN traded) |
| Market | https://theseven.meme/spot/seven |

---

## Ecosystem

| Repo | Description |
|---|---|
| [**sevenchain**](https://github.com/umairkhan2582/sevenchain) | ← You are here — developer hub |
| [**seven-chain-node**](https://github.com/umairkhan2582/seven-chain-node) | Validator node client |
| [**seven-chain-solver**](https://github.com/umairkhan2582/seven-chain-solver) | Bridge solver client |

---

## Links

| Resource | URL |
|---|---|
| Platform | https://theseven.meme |
| Developer Hub | https://theseven.meme/developers |
| Spot Trading | https://theseven.meme/spot/seven |
| Staking | https://theseven.meme/staking |
| Become a Validator | https://theseven.meme/become-validator |
| Bridge | https://theseven.meme/bridge |
| Block Explorer | https://theseven.meme/blockchain/explorer |
| Whitepaper | https://theseven.meme/whitepaper |
| Telegram | https://t.me/SevenBlockChain |

---

## License

MIT
