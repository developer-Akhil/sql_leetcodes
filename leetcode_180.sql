
drop table leetcode.Logs_180;

Create table If Not Exists leetcode.Logs_180 (id int, num int);
Truncate table leetcode.Logs_180;
drop table leetcode.Logs_180;

insert into leetcode.Logs_180 (id, num) values ('1', '1');
insert into leetcode.Logs_180 (id, num) values ('2', '1');
insert into leetcode.Logs_180 (id, num) values ('3', '1');
insert into leetcode.Logs_180 (id, num) values ('4', '2');
insert into leetcode.Logs_180 (id, num) values ('5', '1');
insert into leetcode.Logs_180 (id, num) values ('6', '2');
insert into leetcode.Logs_180 (id, num) values ('7', '2');

insert into leetcode.Logs_180 (id, num) values ('4' , '2');
insert into leetcode.Logs_180 (id, num) values ('5' , '1');
insert into leetcode.Logs_180 (id, num) values ('6' , '2');
insert into leetcode.Logs_180 (id, num) values ('1' , '1');
insert into leetcode.Logs_180 (id, num) values ('3' , '1');
insert into leetcode.Logs_180 (id, num) values ('7' , '2');
insert into leetcode.Logs_180 (id, num) values ('2' , '1');

with cte as (
select * , lead(num,1) over() as next_val, lead(num,2) over() as next_val_2 from leetcode.logs_180)
select num from cte
where num = next_val and num = next_val_2 group by num;


with cte as (
    select num,
    lead(num,1) over() num1,
    lead(num,2) over() num2
    from leetcode.logs_180

)
select distinct num ConsecutiveNums from cte where (num=num1) and (num=num2);
