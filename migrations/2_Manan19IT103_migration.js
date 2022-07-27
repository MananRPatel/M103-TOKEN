const Manan19IT103 = artifacts.require("./Manan19IT103.sol");
const Manan19IT103TokenSale = artifacts.require("./Manan19IT103TokenSale.sol");
const tokenPrice = 1000000000000000; // in wei
module.exports = function (deployer) {
  deployer.deploy(Manan19IT103,1000000).then(()=>{
    return deployer.deploy(Manan19IT103TokenSale,Manan19IT103.address,tokenPrice);
  });
};
