
# Talent Interaction System

## Vision

The Talent Interaction System is designed to securely and privately record and verify talents without revealing any personal identity. By utilizing advanced off-chain recognition systems (for voice, motion, sound, and images), we ensure that each talent is uniquely and confidentially recorded on the Ethereum blockchain. This system offers a robust solution for talent management while maintaining high standards of privacy and data integrity.

## Features

- **Unique Talent Recording:** Ensures that each talent is uniquely recorded using a hash of the recognition data, preventing duplicate entries.
- **Privacy Preservation:** Only hashes of talents are stored on the blockchain, keeping the actual talent data and personal identities confidential.
- **Event Logging:** Emits events when talents are added or when duplicate talent attempts are made, providing transparency and traceability.
- **Existence Check:** Allows users to verify if a particular talent hash has already been recorded, enabling efficient management and retrieval of talents.

## Diagram

Below is a simplified flow diagram of the Talent Interaction System:

```
+---------------------+
|  Off-Chain System   |
| (Recognition & Hash)|
+----------+----------+
           |
           v
+---------------------+
|  Smart Contract     |
|    TalentInteraction|
+----------+----------+
           |
    +------+------+
    |             |
    v             v
+-----------+ +-------------+
|  Add Talent| | Check Talent|
|  Function  | | Existence   |
+-----------+ +-------------+
```

1. **Off-Chain System:** Performs recognition on voice, motion, sound, and images, then generates unique hashes for each talent.
2. **Smart Contract:** Interacts with the Ethereum blockchain to store and manage these hashes.
3. **Add Talent Function:** Adds new talents if they are not duplicates.
4. **Check Talent Existence Function:** Allows users to check if a talent hash already exists in the system.

## Deployment Details

1. **Compile the Contract:**
   Use the Solidity compiler version 0.8.x. Ensure you have the necessary dependencies and set up your development environment (e.g., using Truffle or Hardhat).

2. **Deploy the Contract:**
   Deploy the `TalentInteraction` contract to the Ethereum network using a deployment script or through a tool like Remix or Hardhat. 

3. **Interact with the Contract:**
   Use the contract address provided after deployment to interact with it via a web3 interface or a dApp. Ensure you have configured the network correctly (e.g., Mainnet, Ropsten).

## Contact

For further information, questions, or contributions, please contact:

**Project Lead:** Gwhwmsha Boro  
**Email:** brogwhwm@gmail.com  
**GitHub:** https://github.com/Gwhwm24


## Deployment
Contract Address:0xecfd7fc69bca80ba728afc3cba074d368796adfe
![image](https://github.com/user-attachments/assets/83c4a13b-9a5e-41f4-a9f6-a94737c18e1f)
