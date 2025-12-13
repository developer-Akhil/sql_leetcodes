**1204. Last Person to Fit in the Bus**

# Description 

https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/


# Solution

```
select person_name from (
select person_name,turn, sum(weight) over(order by turn) as weight from queue) t where t.weight <= 1000 
order by turn desc limit 1;

```
