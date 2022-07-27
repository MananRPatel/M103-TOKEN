pragma solidity 0.4.2;

import "./Manan19IT103.sol";

contract Manan19IT103TokenSale {
    address admin; 
    Manan19IT103 public tokenContract;
    uint256 public tokenPrice;
    uint256 public tokensSold;

    event Sell(address _buyer, uint256 _amount);

    function Manan19IT103TokenSale(Manan19IT103 _tokenContract, uint256 _tokenPrice)
        public
    {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }

    function multiply(uint256 x, uint256 y) internal returns (uint256 z) {
        if(y == 0 || (z = x * y) / y == x){
        }else{
            throw;
        }
    }

    function buyTokens(uint256 _numberOfTokens) public payable {
        if(msg.value == multiply(_numberOfTokens, tokenPrice)){

        }else{
            throw;
        }
        if(tokenContract.balanceOf(this) >= _numberOfTokens){

        }else{
            throw;
        }
        if(tokenContract.transfer(msg.sender, _numberOfTokens)){

        }else{
            throw;
        }

        tokensSold += _numberOfTokens;

        Sell(msg.sender, _numberOfTokens);
    }

    function endSale() public {
        if(msg.sender == admin){

        }else{
            throw;
        }
        if(tokenContract.transfer(admin, tokenContract.balanceOf(this))){

        }else{
            throw;
        }

        // UPDATE: Let's not destroy the contract here
        // Just transfer the balance to the admin
        //admin.transfer(address(this).balance);
    selfdestruct(admin);
    }
}
