Create table If Not Exists leetcode.Scores_178 (id int, score DECIMAL(3,2));

Truncate table leetcode.Scores_178;

insert into leetcode.Scores_178 (id, score) values ('1', '3.5');
insert into leetcode.Scores_178 (id, score) values ('2', '3.65');
insert into leetcode.Scores_178 (id, score) values ('3', '4.0');
insert into leetcode.Scores_178 (id, score) values ('4', '3.85');
insert into leetcode.Scores_178 (id, score) values ('5', '4.0');
insert into leetcode.Scores_178 (id, score) values ('6', '3.65');

select * from leetcode.Scores_178;


select score,dense_rank() over(order by score desc) as score from leetcode.Scores_178;
