# Drug Development Tracking Smart Contract (Aptos Move)

This is a simple Aptos Move smart contract designed to **track the development stages of drugs** in the pharmaceutical R&D process.  
It demonstrates how Move can be used for transparency and immutability in drug development tracking.

---

## 📌 Features
- Track drug development from **creation to multiple stages** (e.g., Preclinical → Phase 1 → Phase 2 → Approval).
- Each drug is associated with its **owner (creator address)**.
- Lightweight contract with only **two core functions**.

---

## 📂 Contract Structure
### Structs
- **`Drug`**
  - `name: vector<u8>` → Name of the drug.
  - `stage: vector<u8>` → Current stage of development.

### Functions
1. **`start_tracking(owner: &signer, name: vector<u8>, initial_stage: vector<u8>)`**
   - Initializes tracking for a new drug.
   - Stores its name and starting stage under the creator’s account.

2. **`update_stage(owner: &signer, new_stage: vector<u8>)`**
   - Updates the current stage of the drug.
   - Requires signer permission of the drug’s owner.

---

## 🚀 Deployment Steps
1. **Initialize Aptos CLI**
   ```sh
   aptos init

Contract Address = "0x26e38a90f3983e26bdb9808d7414bdca25b26ea810fb8cce1e57278a36fe86d8"

<img width="1693" height="778" alt="aptos tx ss" src="https://github.com/user-attachments/assets/cea75f5c-b5da-4b11-b33c-1464922792ed" />
