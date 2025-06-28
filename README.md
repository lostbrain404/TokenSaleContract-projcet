# TokenSeller Smart Contract

This is a simple smart contract written in Solidity for selling tokens or handling fixed-price payments using Ether.

## 🚀 Features

- Sets the deployer as the seller.
- Allows buyers to send at least **0.1 ETH** to purchase.
- Transfers the payment directly to the seller.
- Emits a `Sold` event after every successful payment.
- Allows checking the balance of the contract and the seller.

## 💡 Contract Name

`TokenSeller`

## 🔐 Constructor

```solidity
constructor() {
    seller = payable(msg.sender);
}

    Sets the seller to the deployer's address.

⚙️ Functions
1. sellToken()

function sellToken() external payable

    Buyer must send at least 0.1 ether.

    The sent ether is transferred to the seller.

    Emits the Sold event.

2. getContractBalance()

function getContractBalance() external view returns (uint)

    Returns the current balance (in wei) stored in the contract.

3. getSellerBalance()

function getSellerBalance() external view returns (uint)

    Returns the current balance of the seller address (in ether).

📦 Event
Sold

event Sold(address indexed seller, address indexed buyer, uint amount);

    Emitted after a successful sale.

🧪 Example Deployment & Usage

    Deploy contract using Remix or any Ethereum IDE.

    Call sellToken() and send at least 0.1 ether.

    View logs for the Sold event.

    Check contract balance or seller balance using the respective view functions.

🛡️ License

This project is licensed under the MIT License
