# Description
https://leetcode.com/problems/capital-gainloss/

**💰 What is a Capital Gain?**
A capital gain is the profit you earn when you sell an asset (like real estate, stocks, mutual funds, or gold) for more than you paid for it.

 **📈 Simple Formula:**
`Capital Gain = Selling Price - Purchase Price`

If the result is positive, you have a capital gain.
If it’s negative, it's a capital loss.

# Solution
```
select stock_name, sum( case when operation='Sell' then price else 0 end)  - 
sum(case when operation='Buy' then price else 0 end) as capital_gain_loss 
from stocks group by stock_name;
```
