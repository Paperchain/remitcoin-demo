pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/RemitCoin.sol";

contract TestRemitcoin {

  function testInitialBalanceUsingDeployedContract() {
    RemitCoin meta = RemitCoin(DeployedAddresses.RemitCoin());

    uint expected = 20000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 20000 RemitCoin initially");
  }

  function testInitialBalanceWithNewRemitCoin() {
    RemitCoin meta = new RemitCoin();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 20000 RemitCoin initially");
  }

}
