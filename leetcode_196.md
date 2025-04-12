# Description
196. Delete Duplicate Emails

https://leetcode.com/problems/delete-duplicate-emails/description/

# Solution
-- ------- Approach 2
```
delete from leetcode.person_196 where id not in(
select * from (select min(id) as id from leetcode.person_196 group by email) as p);
```

-- ------- Approach 2
```
with my_cte as (select min(id) as id from leetcode.person_196 group by email)
delete from leetcode.person_196 where id not in (select id from my_cte); 
```
