# Description
183. Customers Who Never Order

https://leetcode.com/problems/customers-who-never-order/description/

# Solution
```
select c.id,c.name,o.id,o.customerId
from leetcode.Customers_183 c left join
leetcode.Orders_183 o on c.id = o.customerId
where o.customerId is null;
```
