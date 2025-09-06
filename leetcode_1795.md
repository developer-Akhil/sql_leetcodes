**1795. Rearrange Products Table**

# Description
https://leetcode.com/problems/rearrange-products-table/description/


# Solution

```
Create table If Not Exists Products (product_id int, store1 int, store2 int, store3 int);
Truncate table Products;
insert into Products (product_id, store1, store2, store3) values ('0', '95', '100', '105');
insert into Products (product_id, store1, store2, store3) values ('1', '70', NULL, '80');


select product_id,'store1' as store, store1 as price from products where store1 is not null

union all

select product_id,'store2' as store, store1 as price from products where store2 is not null

union all

select product_id,'store3' as store, store1 as price from products where store3 is not null;

```
