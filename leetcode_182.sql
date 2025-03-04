Create table If Not Exists leetcode.Person_182 (id int, email varchar(255));

Truncate table leetcode.Person_182;

insert into leetcode.Person_182 (id, email) values ('1', 'a@b.com');
insert into leetcode.Person_182 (id, email) values ('2', 'c@d.com');
insert into leetcode.Person_182 (id, email) values ('3', 'a@b.com');

select email from leetcode.Person_182 group by email having count(email) >= 2;
