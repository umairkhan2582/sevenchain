import { ethers } from "hardhat";

  async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying from:", deployer.address);

    const MemeToken = await ethers.getContractFactory("MemeToken");

    // Customize these:
    const NAME   = "My Meme Token";
    const SYMBOL = "MEME";
    const SUPPLY = 1_000_000_000; // 1 billion tokens

    const token = await MemeToken.deploy(NAME, SYMBOL, SUPPLY);
    await token.waitForDeployment();

    const address = await token.getAddress();
    console.log("✅ MemeToken deployed to:", address);
    console.log("   Explorer:", `https://theseven.meme/blockchain/explorer/token/${address}`);
    console.log("   Submit to launchpad: https://theseven.meme/launchpad");
  }

  main().catch((err) => { console.error(err); process.exit(1); });
  