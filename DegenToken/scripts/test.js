// Import the contract's ABI
// In your test function
async function callContractFunctions() {
  // Get the deployed contract's address
  const contractAddress = '0x6761c5010cabc16ce92086a41594F866dA60BbcC';

  // Create an instance of the contract using the address and ABI
  const contract = await ethers.getContractAt("DegenToken", contractAddress);

  // Call the desired functions using the contract instance
  let balance = await contract.balanceOf('0x5C8F7E4C8d3bcFA73770da2e7F78b02f057383B2');
  console.log("Token balance:", balance.toString());

  // Example of calling the transfer function
  const transferTx = await contract.transfer('0x677144b19931B53ccb87b1946490a9341E7ae78C', 100);
  await transferTx.wait();
  console.log("Transfer successful!");
  balance = await contract.balanceOf('0x677144b19931B53ccb87b1946490a9341E7ae78C');
  console.log("Token balance:", balance.toString())

  const burnTxn =await contract.burn('0x677144b19931B53ccb87b1946490a9341E7ae78C',50);
    await burnTxn.wait() ;
    console.log("Burn sucessfuly") ;
    balance = await contract.balanceOf('0x677144b19931B53ccb87b1946490a9341E7ae78C');
   console.log("Token balance:", balance.toString())


   const reedeemCoin = await contract.redeem("0x677144b19931B53ccb87b1946490a9341E7ae78C",4500);
   await reedeemCoin.wait();
   console.log("redeem sucefully");
   balance = await contract.balanceOf('0x677144b19931B53ccb87b1946490a9341E7ae78C');
   console.log("Token balance:", balance.toString())
}

callContractFunctions() ;