# eth-avax-module-4
# DegenToken

This Solidity smart contract is an implementation of the DegenToken ERC20 token on the Avalanche Fuji test network. The contract includes functionalities for token burning and redemption.

## Description

The DegenToken contract extends the ERC20 contract from the OpenZeppelin library and also inherits the Ownable contract. It creates a token named "Degen" with the symbol "DGN". The contract's constructor function mints 1000 Degen tokens and assigns them to the contract deployer.

The contract includes the following functions:

- `burn(address _address, uint256 _amount)`: Allows the contract owner to burn a specified amount of tokens from a given address.
- `redeem(address _address, uint256 _amount)`: Allows the contract owner to transfer a specified amount of tokens to a given address.

## Getting Started

### Prerequisites

- Node.js
- npm (Node Package Manager)

### Installation

1. Clone the repository or download the source code.

2. In the project directory, open a terminal and run the following command to install the required dependencies:

$ npm install

### Usage

1. Edit the `.env` file and provide the necessary private key and API key information for the Avalanche Fuji test network.

2. To compile the contract, run the following command:

$ npx hardhat compile

3. To deploy the contract to the Avalanche Fuji test network, run the following command:

$ npx hardhat run scripts/deploy.js --network fuji

After the deployment is successful, the contract address will be displayed in the console. You can use this address to interact with the deployed contract.

4. To verify the contract on the Avalanche Fuji test network, run the following command:

$ npx hardhat verify <contract address> --network fuji
  
5. To run the provided tests for the contract, run the following command:
 
npx hardhat run scripts/test.js --network fuji
  
### Networks

The Hardhat configuration file (`hardhat.config.js`) includes the network settings for the Avalanche Fuji test network (`fuji`) and the Avalanche mainnet (`mainnet`).

Ensure that you have the necessary private key and API key information provided in the `.env` file for the respective networks.
  
## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

  



