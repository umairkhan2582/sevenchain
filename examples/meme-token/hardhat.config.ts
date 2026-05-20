import { HardhatUserConfig } from "hardhat/config";
  import "@nomicfoundation/hardhat-toolbox";
  import * as dotenv from "dotenv";
  dotenv.config();

  const config: HardhatUserConfig = {
    solidity: "0.8.24",
    networks: {
      sevenchain: {
        url: "https://theseven.meme/api/seven-chain/jsonrpc",
        chainId: 70007,
        accounts: process.env.PRIVATE_KEY ? [process.env.PRIVATE_KEY] : [],
      },
    },
  };

  export default config;
  