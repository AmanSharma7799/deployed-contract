# AllowanceWallet

A simple, secure smart contract that allows an owner to manage ETH allowances for multiple addresses. Users can withdraw ETH up to their allowed limit.  
Deployed on [Sepolia Testnet](https://sepolia.etherscan.io).

---

## 🚀 Contract Details

- **Smart Contract:** `AllowanceWallet.sol`
- **Network:** Sepolia Testnet
- **Deployed Address:** [`0x09bC06D665C6bCeABFcE635A68519Ee3a8A2573B`](https://sepolia.etherscan.io/address/0x09bC06D665C6bCeABFcE635A68519Ee3a8A2573B)
- **Verified on Etherscan:** ✅

---

## 📌 Features

✅ Owner can deposit ETH into the contract  
✅ Owner can set individual allowances for any address  
✅ Users can withdraw up to their allowance  
✅ Tracks total contract balance  
✅ Emits clear events for transparency  
✅ Protects against overspending and re-entrancy

---

## ⚙️ Contract Functions

| Function | Description |
| -------- | ------------ |
| `receive()` | Accepts ETH deposits |
| `setAllowance(address _who, uint256 _amount)` | Owner sets how much an address can withdraw |
| `withdraw(uint256 _amount)` | User withdraws ETH up to their allowance |
| `contractBalance()` | View total ETH balance in the contract |
| `allowances(address)` | View allowance for an address |
| `owner()` | Shows contract owner address |

---

## ✏️ How to Interact (on Etherscan)

1️⃣ **Deposit ETH:**  
Go to the `Write Contract` tab → Click `Write` next to **receive()** or just send ETH directly to the contract address.

2️⃣ **Set Allowance (Owner only):**  
`setAllowance(address, amount)`  
Set how much a user can withdraw.

3️⃣ **Withdraw (Users):**  
`withdraw(amount)`  
Withdraw ETH up to your allowance.

4️⃣ **Check Balance & Allowance:**  
Use `Read Contract` tab:
- `contractBalance()`
- `allowances(address)`
- `owner`

---

