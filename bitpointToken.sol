

pragma solidity 0.4.11;

contract owned {
   address public owner;

   function owned() {
       owner = msg.sender;
   }

   modifier onlyOwner {
       if (msg.sender != owner) throw;
       _;
   }

   function transferOwnership(address newOwner) onlyOwner {
       owner = newOwner;
   }
}

contract Bitpoint is owned  
{
    uint256 public totalSupply;
    uint256 public eurval;
 
    
mapping (address => uint256) balances;
mapping (address => uint256) withdrawn;


event TokenMinted(address   _for, uint256 _value);
event withdrawn(address   from, uint256 _value);

event TokenBurned( uint256 _value);

  
    
  
    function () payable {
       uint amount = msg.value;
         //TODO  convert amount to EUR
        amount =   amount * eurval;
        balances[msg.sender] = balances[msg.sender] + amount;
        totalSupply + = amount;
        TokenMinted(msg.sender,amount);
        
      
    }
   
    function balanceOf(address _owner) constant returns (uint256 balance) {
       return balances[_owner];
   }
   function withdrawnFrom(address _owner) constant returns (uint256 balance) {
       return withdrawn[_owner];
   }
   //return unix timestamp
//     function creationTime(address _owner) constant returns (uint256 createdOn) {
//        return balances[_owner].createdOn;
//    }
    
    function transfer(address _to, uint256 _value) returns (bool success) {
     
       if (balances[msg.sender] >= _value && _value > 0) {
           balances[msg.sender] -= _value;
           balances[_to] += _value;
           Transfer(msg.sender, _to, _value);
           return true;
       } else { return false; }
   }
  
  function getTotalSupply() constant returns (uint) // this doesn't have anything to do with the act of greeting
   {                                                    
       return totalSupply;
   }

//AtM calls withdraw, to is address of customer to which ether to be send
function withdraw onlyOwner(uint256 value, address from, address to) {
   // withdraw will 
   if (balances[from] < value){
       return
   }
   profitForuser = value * 4/100;
   profitForContract = value * 1/100;
   value = value - profitForuser;
   value = value - profitForContract;
   totalSupply = totalSupply + profitForContract;
   balances[from] = balances[from] - value;
   withdrawn[from] = withdrawn[from] + value;
   withdrawn(from,value);
    balances[from] = balances[from] + profitForuser;
      //send ether to address
  ethertosend =  value/eurval
  to.transfer(ethertosend);
}

//ATM deposit ether back to contract
function deposit onlyOwner(uint256 value, address to) payable{
    uint amount = value;
         //TODO  convert amount to EUR
        amount =   amount * eurval;
        balances[to] = balances[to] + amount;
        totalSupply + = amount;
        withdrawn[to] = withdrawn[to] - amount;
        TokenMinted(to,amount);
}

 
 
    /**********
    Standard kill() function to recover funds
    **********/
   function kill()
   {
       if (msg.sender == creator)
           suicide(creator);  // kills this contract and sends remaining funds back to creator
   }

}
