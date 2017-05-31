# The BitPoint 

BitPoint-token dApp 29st May 2017

### OVERVIEW

BitPointX is a dApp that allows users to invest in the bitpoint by providing liquidity to our ATM Network. The dApp issues tokens on receipt of ethereum, these tokens are essentially smart bonds whose value is pegged to the Euro. When a user buys BitPoint Tokens(BPT), the ethereum is sent to a account on an exchange where they are immediately turned into euros, this is done to manage volatility. When a customer orders cryptocurrency from the ATM, 98% of the order is sent to there wallet in the currency of their choice. This cash is sent back to the exchange for reuse. The remaining 2% (the profit) is used to purchase ether which is sent to the dApp where it is used to mint more tokens and devided proportionally to existing token holders. When a token holder wished to redeeem their tokens, ethereum is purchaced and sent to there address. The tokens are then burnt

### GOALS

* Increase liquidity in the BitPoint ATM Network in a decentralised manner
* Lower the cost of scaling the network
* Create a high yield dividend bearing asset that hedges against a drop in the Ethereum price

### SPECIFICATIONS

The dApp has web3 front end for purchasing and selling tokens as well as displaying dapp information such as the current ETH/EUR price, current ROI ect. On deposit of ethereum, the dApp mints an equal amount of tokens(to current euro value) and sends them to the depositing address. On deposit of tokens, the dApp burns the tokens and sends an amount of ethereum(to current euro value) to the depositing address. Token holders funds are kept in a multisig address. Every 7 days profit is calculated in ethereum, this is converted into more tokens and sent to the token holder's address.

The token will have the following characteristics: It will be pegged to the Euro , 1 token = €1 Tokens will be minted as eth is sent to the dapp. Tokens will be burned as tokens are sent back to the dapp, the Eth will be returned to the token holder. Profit is issued as new tokens every 7 days

The front end of the dapp will have the following functions 
* Interface to buy and sell tokens
* Display amount due to each address with >0 balance
* Display amount paid to each address
* Display total profit due * Display total profit paid * Display eth/eur exchange rate

