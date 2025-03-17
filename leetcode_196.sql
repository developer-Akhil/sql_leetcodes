Create table If Not Exists leetcode.Person_196 (Id int, Email varchar(255));
Truncate table leetcode.Person_196;
insert into leetcode.Person_196 (id, email) values ('1', 'john@example.com');
insert into leetcode.Person_196 (id, email) values ('2', 'bob@example.com');
insert into leetcode.Person_196 (id, email) values ('3', 'john@example.com');

select * from leetcode.person_196;
SET SQL_SAFE_UPDATES = 0;

-- ------- Approach 2
delete from leetcode.person_196 where id not in(
select * from (select min(id) as id from leetcode.person_196 group by email) as p);

-- ------- Approach 2
with my_cte as (select min(id) as id from leetcode.person_196 group by email)
delete from leetcode.person_196 where id not in (select id from my_cte); 
