const Token = artifacts.require("./Token.sol");

module.exports = async function (deployer) {
  await deployer.deploy(Token, "HelloToken", "HELL0", 10000n * BigInt(1e18));
  const instance = await Token.deployed();

  const newOwner = '0x672AdA84b3F9287AB2b4b4426f6CbF173625849c'; // Замените на ваш адрес MetaMask
  await instance.transferOwnership(newOwner);
};
