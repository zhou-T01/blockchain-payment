🌐 Cross-Border Supply Chain Payment System
| Harbour International Education Technology — Blockchain Course Session 3
A blockchain-based decentralised application (DApp) that eliminates intermediary banks in cross-border trade payments using Ethereum smart contracts.

🔗 Live Links / 
ResourceLink🌐 Live DApphttps://blockchain-payment-snowy.vercel.app📄 Smart Contract (Sepolia)0x2a2dADD02D68876E70f2eF91C39dCfBB4c229AF8💻 GitHub Repohttps://github.com/zhou-T01/blockchain-payment

📋 Project Summary / 
This project investigates whether Ethereum-based smart contracts can reduce transaction costs and settlement risks in cross-border supply chain payments for SMEs.
Key Results:

⚡ Settlement time: ~15 seconds (vs. 3–5 business days for SWIFT)
💰 Intermediary fees: Zero (vs. 2–5% for traditional wire transfers)
🔒 Counterparty risk: Eliminated (funds locked in smart contract escrow)
✅ Full end-to-end transaction successfully tested on Sepolia testnet


🏗️ System Architecture / 
┌─────────────────────────────────────────────────────┐
│              User (Buyer / Seller)                  │
└───────────────────────┬─────────────────────────────┘
                        │ MetaMask Wallet
┌───────────────────────▼─────────────────────────────┐
│         Frontend (HTML/JS + ethers.js)              │
│       Hosted on Vercel (Cloud Platform)             │
│   https://blockchain-payment-snowy.vercel.app       │
└───────────────────────┬─────────────────────────────┘
                        │ ethers.js
┌───────────────────────▼─────────────────────────────┐
│         TradePayment.sol (Solidity 0.8.28)          │
│         Deployed on Ethereum Sepolia Testnet        │
│   0x2a2dADD02D68876E70f2eF91C39dCfBB4c229AF8       │
└─────────────────────────────────────────────────────┘

📁 Repository Structure / 
blockchain-payment/
├── contracts/
│   └── TradePayment.sol      # Solidity smart contract
├── frontend/
│   └── index.html            # DApp frontend (HTML + ethers.js)
├── scripts/
│   └── deploy.ts             # Hardhat deployment script
├── ignition/modules/
│   └── deploy.ts             # Hardhat Ignition module
├── hardhat.config.ts         # Hardhat configuration
├── package.json
└── README.md

🔧 Smart Contract Functions / 
FunctionDescriptioncreateOrder(address _seller)Buyer locks ETH payment in contract escrowconfirmDelivery(uint256 _orderId)Buyer confirms delivery → auto-releases payment to sellergetOrder(uint256 _orderId)Read-only query of order status

🚀 How to Use the DApp / 

Install MetaMask browser extension and switch to Sepolia Testnet
Get free Sepolia ETH from a faucet (e.g., https://sepoliafaucet.com)
Visit https://blockchain-payment-snowy.vercel.app
Click Connect MetaMask → Step 1 complete
Enter seller wallet address and payment amount → Click Create Order & Pay
After goods delivered, enter Order ID → Click Confirm Delivery & Release Payment
Payment is automatically transferred to the seller on-chain ✅


🛠️ Tech Stack / 
LayerTechnologySmart ContractSolidity 0.8.28, Ethereum Sepolia TestnetCompilationHardhat v2.22.0DeploymentRemix IDE (Injected Provider - MetaMask)FrontendHTML5, JavaScript, ethers.js v5.7.2WalletMetaMaskCloud HostingVercelVersion ControlGitHub

📊 Comparison: Traditional vs Blockchain / 
DimensionTraditional SWIFTThis DAppSettlement Speed3–5 business days~15 secondsIntermediaries2–4 banksZeroTransaction Fees2–5%Gas onlyTransparencyOpaquePublic ledgerCounterparty RiskHighEliminated

📝 Course Information / 

Program: Harbour International Education Technology Online Research Program
Course: Information Security and Blockchain | Session 3
Research Question: Can blockchain reduce transaction costs and settlement risks in cross-border supply chain payments for SMEs?


⚠️ Disclaimer / 
This project operates on the Ethereum Sepolia testnet using simulated ETH for educational purposes only. Not intended for real financial transactions.
