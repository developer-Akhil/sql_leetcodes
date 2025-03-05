-- 183. Customers Who Never Order

Create table If Not Exists leetcode.Customers_183 (id int, name varchar(255));
Create table If Not Exists leetcode.Orders_183 (id int, customerId int);
Truncate table leetcode.Customers_183;
insert into leetcode.Customers_183 (id, name) values ('1', 'Joe');
insert into leetcode.Customers_183 (id, name) values ('2', 'Henry');
insert into leetcode.Customers_183 (id, name) values ('3', 'Sam');
insert into leetcode.Customers_183 (id, name) values ('4', 'Max');
Truncate table leetcode.Orders_183;
insert into leetcode.Orders_183 (id, customerId) values ('1', '3');
insert into leetcode.Orders_183 (id, customerId) values ('2', '1');

select * from leetcode.Orders_183;

select * from leetcode.Customers_183;

select c.id,c.name,o.id,o.customerId from leetcode.Customers_183 c left join leetcode.Orders_183 o on c.id = o.customerId where o.customerId is null;
