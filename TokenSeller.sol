// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;


contract test { 
    address payable public seller;
    event Sold(address indexed seller,address indexed buyer,uint amount);

    constructor(){
        seller = payable(msg.sender) ;
    }
    function SellToken()external payable{
        require(msg.value>=0.1 ether , "Your amount is not enough");
        seller.transfer(msg.value);
        emit Sold(seller,msg.sender,msg.value);
    }

    function getContractBalance() external view returns(uint){
        return address(this).balance ;
    }

    function getSellerBalance()external view returns(uint){
        return seller.balance/1 ether ;

    }
}
