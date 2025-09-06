**626. Exchange Seats**

# Discription

https://leetcode.com/problems/exchange-seats/description/

# Solution

```
Create table If Not Exists Seat (id int, student varchar(255))
Truncate table Seat
insert into Seat (id, student) values ('1', 'Abbot')
insert into Seat (id, student) values ('2', 'Doris')
insert into Seat (id, student) values ('3', 'Emerson')
insert into Seat (id, student) values ('4', 'Green')
insert into Seat (id, student) values ('5', 'Jeames')

with cte as (
select id,student,lead(id,1) over(order by id) as next,lag(id,1) over(order by id) as prev from seat)
select case when id%2 = 1 and next is not null then next 
when id%2 = 0 then prev else id end as id,student from cte order by id;
```
