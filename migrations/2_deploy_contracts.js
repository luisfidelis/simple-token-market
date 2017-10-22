// --- Contracts

let TokenMarket = artifacts.require("./market/TokenMarket.sol");
let Token = artifacts.require("./market/Token.sol");

// --- Reference values

module.exports = function(deployer, network, accounts) {
  deployer.deploy(TokenMarket)
    .then(() => {
      TokenMarket
        .deployed()
        .then(deployed => {
          console.log(deployed);
          deployer.deploy(Token)
          .then(() => {
            Token
              .deployed()
              .then(console.log);
          });
        });
    });
};
