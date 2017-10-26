pragma solidity ^0.4.4;

import '../token/SimpleToken.sol';
import 'zeppelin-solidity/contracts/math/SafeMath.sol';

contract TokenMarket {
  using SafeMath for uint256;
  // the token being sold  
  SimpleToken public token;
  // Token Market owner
  address public owner;
  // amount of raised money in wei
  uint256 public weiRaised;
  // how many token units a buyer gets per wei
  uint256 public rate = 1;

  function TokenMarket() {
    owner = msg.sender;
    token = createTokenContract();
  }
  function buyTokens(address purchaser) payable
    public 
    returns(bool) 
  {
    require(purchaser != address(0));
    uint256 weiAmount = msg.value;
    uint256 tokens = weiAmount.mul(rate);
    weiRaised = weiRaised.add(weiAmount);
    token.transferFrom(owner, purchaser, tokens);
    forwardFunds();
    return true;
  }
  function () payable {
    buyTokens(msg.sender);
  }

  // send ether to the fund collection wallet
  // override to create custom fund forwarding mechanisms
  function forwardFunds() internal {
    owner.transfer(msg.value);
  }

  // creates the token to be sold.
  // override this method to have crowdsale of a specific mintable token.
  function createTokenContract() internal returns (SimpleToken) {
    return new SimpleToken(owner);
  }
        
}