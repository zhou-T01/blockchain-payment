import { ethers } from "hardhat";

async function main() {
  const TradePayment = await ethers.getContractFactory("TradePayment");
  const contract = await TradePayment.deploy();
  await contract.waitForDeployment();
  console.log("合约地址：", await contract.getAddress());
}

main().catch(console.error);