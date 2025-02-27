-- ---------------- 175. Combine Two Tables

Create table If Not Exists leetcode.Person_175 (personId integer, firstName varchar(255), lastName varchar(255));

Create table If Not Exists leetcode.Address_175 (addressId int, personId int, city varchar(255), state varchar(255));

Truncate table leetcode.Person_175;

insert into leetcode.Person_175 (personId, lastName, firstName) values ('1', 'Wang', 'Allen');

insert into leetcode.Person_175 (personId, lastName, firstName) values ('2', 'Alice', 'Bob');

Truncate table leetcode.Address_175;

insert into leetcode.Address_175 (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York');

insert into leetcode.Address_175 (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California');

select firstName,lastName,city,state from leetcode.Person_175 p left join leetcode.Address_175 a on p.personId = a.personId; 
