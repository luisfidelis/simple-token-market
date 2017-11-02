pragma solidity ^0.4.11;

import "zeppelin-solidity/contracts/token/MintableToken.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract SimpleToken is MintableToken {
  
  string public constant name = "SimpleToken";
  string public constant symbol = "STK";
  uint8 public constant decimals = 18;

}