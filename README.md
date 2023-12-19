# Subway Surfer Token (SS)

## Overview

The Subway Surfer Token (SS) is an ERC-20 compliant token built on the Ethereum blockchain. It comes with additional functionalities to enhance the gaming experience, such as collecting coins, buying boosters, and dropping coins.

## Features

### ERC-20 Standard

The Subway Surfer Token adheres to the ERC-20 standard, providing compatibility with various decentralized exchanges and wallets.

### Total Supply

The initial total supply of Subway Surfer Tokens is set to 100. This supply is minted to the contract owner upon deployment.

### Ownership

The contract includes the Ownable module, ensuring that only the owner of the contract has certain privileged functions.

## Functions

### `collectCoin(uint amount)`

- **Access:** Only owner
- **Description:** Allows the owner to mint additional Subway Surfer Tokens. The total supply and owner balance are increased by the specified amount.

### `buyBooster()`

- **Access:** Any address
- **Description:** Allows any address to purchase a booster by burning 10 Subway Surfer Tokens. Boosters are incremented, and the total supply is reduced accordingly.

### `dropCoin(uint amount)`

- **Access:** Any address
- **Description:** Allows any address to burn Subway Surfer Tokens, simulating the action of dropping coins. The total supply and owner balance are reduced by the specified amount.

## Usage

1. **Deploy the Contract:**
   - Deploy the Subway Surfer contract, specifying the contract owner's address.

2. **Collect Coins:**
   - Use the `collectCoin` function to mint additional Subway Surfer Tokens. Only the owner can perform this action.

3. **Buy Boosters:**
   - Use the `buyBooster` function to purchase boosters by burning 10 Subway Surfer Tokens.

4. **Drop Coins:**
   - Use the `dropCoin` function to simulate dropping coins by burning Subway Surfer Tokens.
