**1327. List the Products Ordered in a Period**

# Description

https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/


# Solution
```
select product_name, sum(unit) as unit from leetcode.Products_1327 p join leetcode.Orders_1327 o on p.product_id = o.product_id where date_format(
order_date,'%Y-%m') = '2020-02' group by product_name having sum(unit) >= 100;
```
