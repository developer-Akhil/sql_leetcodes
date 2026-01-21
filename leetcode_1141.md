**1141. User Activity for the Past 30 Days I**

# Discription

https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/

# Solution

```
select activity_date as day, count(distinct user_id) as active_users 
from activity
where activity_date between date_add('2019-07-27', interval-29 day) and '2019-07-27' group by 
activity_date;
```
