**1633. Percentage of Users Attended a Contest**

# Description

https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/


# Solution
```
select contest_id, round((cnt /(select count(user_id) from users))*100,2) as percentage  from (
select contest_id, count(user_id) as cnt from Register group by contest_id) tbl order by percentage desc, contest_id ;
```
