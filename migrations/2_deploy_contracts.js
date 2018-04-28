var ConvertLib = artifacts.require("./ConvertLib.sol");
var RemitCoin = artifacts.require("./RemitCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, RemitCoin);
  deployer.deploy(RemitCoin);
};
