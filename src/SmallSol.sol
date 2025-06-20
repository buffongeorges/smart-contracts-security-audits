// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.16;

contract SmallSol {
  // Invariant: Must never revert
  // Path 1 : assert(a not 2**256 - 1); a:= a+1; return a;
  // Path 2 : assert(a != 2**256); revert;

  // 1. If we give the maximum size of uint256, and we try to add 1 to it, the function will revert.abi
  // 2. If we give any other number, the function will add 1 to it normally and return.
  function f(uint256 a) public returns (uint256) {
    a = a + 1; // return (a + 1)
    assert (a != 1);
    return a; // a + 1 (overflow revert is a is the max uint256)
  }
}