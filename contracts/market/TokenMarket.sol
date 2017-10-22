pragma solidity ^0.4.4;

import '../token/SimpleToken.sol';


contract TokenMarket {

  // the token being sold  
  SimpleToken public token;
  
  event TokenTrade(address _from, string _to, SimpleToken[] _tokens);
  event Ordered(address _from, SimpleToken[] _tokens );  
  // Creates a new token order
  function order()
    returns(bool) 
  {
    return true;
  }
        
}