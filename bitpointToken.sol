

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
   address creator;     
   uint256 public totalSupply;
   uint profit; //profit calculation

   struct BitToken{
       uint256 createdOn;
       uint256 token;
   }

mapping (address => BitToken) balances;

  
   function Bitpoint() public  
   {
       creator = msg.sender;
      
   }
  
    function () payable {
       uint amount = msg.value;
       //mint token only if address dont have any token
       if( balances[msg.sender].token==0){
         balances[msg.sender].token = amount;
         totalSupply += amount;
       }else{
           return;
       }
      
    }
   
    function balanceOf(address _owner) constant returns (uint256 balance) {
       return balances[_owner].token;
   }
   //return unix timestamp
    function creationTime(address _owner) constant returns (uint256 createdOn) {
       return balances[_owner].createdOn;
   }
   //not allowed for now
//     function transfer(address _to, uint256 _value) returns (bool success) {
     
//        if (balances[msg.sender] >= _value && _value > 0) {
//            balances[msg.sender] -= _value;
//            balances[_to] += _value;
//            Transfer(msg.sender, _to, _value);
//            return true;
//        } else { return false; }
//    }
  
  function getTotalSupply() constant returns (uint) // this doesn't have anything to do with the act of greeting
   {                                                    
       return totalSupply;
   }

function withdraw(){
    // get balance of user
    var  amount = balances[msg.sender].token;
    //TODO: calculate profit for user
    profit = calculateProfit(msg.sender);
    amount = amount + profit;
    //mint token for profit
    totalSupply = totalSupply + profit;
    msg.sender.transfer(amount);
    //burn token
    totalSupply = totalSupply - amount;
}

//TODO
function calculateProfit(address _sender)constant returns (uint256 amount){
  return balances[_sender].token;
}
 
  
//    event Transfer(address indexed _from, address indexed _to, uint256 _value);

   
  
    /**********
    Standard kill() function to recover funds
    **********/
   function kill()
   {
       if (msg.sender == creator)
           suicide(creator);  // kills this contract and sends remaining funds back to creator
   }

}
