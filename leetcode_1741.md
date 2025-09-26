**1741. Find Total Time Spent by Each Employee**

# Description 

https://leetcode.com/problems/find-total-time-spent-by-each-employee/description/\

# Solution

```
select event_day as day, emp_id, sum(out_time - in_time) as total_time from employees 
group by event_day, emp_id;
```
