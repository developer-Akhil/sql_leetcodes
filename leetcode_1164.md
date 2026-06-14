# 1164. Product Price at a Given Date

**Description** 

https://leetcode.com/problems/product-price-at-a-given-date/description/


# Solution

```

with cte as ( select *, rank() over(partition by product_id order by new_price desc)  rnk
from products where change_date <= '2019-08-16')
select product_id, new_price as price from cte where rnk = 1
union all
select product_id, 10 as price from products where product_id not in (select product_id from cte);

```
