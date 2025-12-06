**602. Friend Requests II: Who Has the Most Friends**


# Descerption

https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/


# Solution

```
select id,count(num) as num from 
(select requester_id as id, accepter_id as num from RequestAccepted
union
select accepter_id as id ,requester_id as num from RequestAccepted) tbl group by id
order by num desc limit 1;
```
