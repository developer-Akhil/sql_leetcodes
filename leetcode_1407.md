**1407. Top Travellers**

# Description
https://leetcode.com/problems/top-travellers/description/


# Solution

```
select u.name, ifnull(sum(r.distance),0) as travelled_distance  from Rides as r 
right join Users as u on r.user_id = u.id
group by u.id order by 2 desc , 1;

```
