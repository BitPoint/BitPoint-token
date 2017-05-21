# BitPoint-token
ERC20 token representing liquidity in the ATM network 

﻿The BitPoint 
BitPoint-token dApp
21st May 2017

###OVERVIEW 

BitPoint x is a dApp that allows users to invest in the bitpoint by providing liquidity to our ATM Network in return for a ERC20 token. The token represents a Promissory Note redeemable on demand from the dApp. Owner of the dApp promises to pay xintrest rate on eth in addition to the principal. Profit is divided equally amongst tokens every 7 days ex-dividend 

###GOALS
1. Increase liquidity in the BitPoint ATM Network in a decentralised manner 
2. Lower the cost of scaling the network 
3. Create a high yield dividend bearing asset that hedges against a drop in the Ethereum price 

###SPECIFICATIONS

The dApp has web3 front end for purchasing and selling tokens as well as displaying dapp information. On deposit of ethereum, the dApp mints an equal amount of tokens and sends them to the depositing address. On deposit of tokens, the dApp burns the tokens and sends an equal amount of ethereum to the depositing address. Token holders funds are kept in a multisig address. Every 7 days profit is calculated in ethereum, this is converted into more tokens and sent to the token holder's address. 

the owner of the dApp can withdraw ethereum from the dapp. The amount withdrawn multiplied by interest rate recorded as a debt against the owner. When the owner pays back the Eth, the principal is paid back to the multisig address and the profit is kept in separate until payout

#####The token will have the following characteristics:

* It will be pegged to ethereum, 1 token = 1 eth
* Tokens will be minted as eth is sent to the dapp. 
* Tokens will be burned as tokens are sent back to the dapp, the Eth will be returned to the token holder.
* Profit is issued as new tokens every 7 days 

#####The front end of the dapp will have the following functions

   * Interface to buy and sell tokens 
   * Display amount due to each address with >0 balance 
   * Display amount paid to each address 
   * Display total profit due
   * Display total profit paid 
   * Display intrest rate

###MILESTONES

@Niktrix can you add the milestones here
