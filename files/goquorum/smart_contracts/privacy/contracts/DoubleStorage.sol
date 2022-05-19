pragma solidity ^0.7.0;

contract DoubleStorage {
  uint public storedData;
  uint public secondData;
  event stored(address _to, uint _amount);

  constructor(uint initVal) public {
    emit stored(msg.sender, initVal);
    storedData = initVal;
    secondData = initVal;
  }

  function set(uint x) public {
    emit stored(msg.sender, x);
    storedData = x;
  }

  function setSecond(uint x) public { 
    secondData = x;
  }

  function get() view public returns (uint retVal) {
    return storedData;
  }

  function getSecond() view public returns (uint retVal) {
    return secondData;
  }

}
