// --- Contracts

let TokenMarket = artifacts.require("./market/TokenMarket.sol");
let SimpleToken = artifacts.require("./token/SimpleToken.sol");

// --- Reference values

module.exports = function(deployer, network, accounts) {
  deployer.deploy(TokenMarket)
    .then(() => {
      TokenMarket
        .deployed()
        .then(deployed => {
          console.log(deployed);
        }, error => {
          console.log(error);
        });
    },error => {
      console.log(error);
    });
};
