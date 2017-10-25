pragma solidity ^0.4.11;

import "zeppelin-solidity/contracts/token/StandardToken.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract SimpleToken is StandardToken {
  
  string public constant name = "SimpleToken";
  string public constant symbol = "STK";
  uint8 public constant decimals = 18;

  uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function SimpleToken(address owner) {
    totalSupply = INITIAL_SUPPLY;
    balances[owner] = INITIAL_SUPPLY;
  }

}