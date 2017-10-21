pragma solidity ^0.4.4;

import '../token/Token.sol';


contract TokenMarket {

  // the token being sold  
  SimpleToken public token;
  
  event TokenTrade(address _from, string _to, string[] _tokens);
  event Ordered(address _from, )  
  // Creates a new token order
  function order(string _id, uint256 _paybackMonths, uint256 _grossReturn, uint256[] _assets) payable
    returns(bool) 
  {
    address newOffer = address(new InvestmentOffer(msg.sender, VERSION, _paybackMonths, _grossReturn));
    address[] newAssets;
    for (uint index = 0; index < _assets.length; index++) {
      newAssets.push(address(new InvestmentAsset(msg.sender, VERSION, newOffer)));
    }
    Offers(_id, msg.sender, VERSION, newOffer, _paybackMonths, _grossReturn, newAssets);    
    return true;
  }
        
}