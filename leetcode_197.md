**197. Rising Temperature**

# Description

https://leetcode.com/problems/rising-temperature/description/


# Solution

```
with temper_cte as 
(

select *,Date_Add(recordDate,interval - 1 Day) as yesterday_date,
lag(recordDate) over(order by recordDate) as prev_date,
lag(temperature) over(order by recordDate) as prev_temp
from Weather
)
select id from temper_cte where prev_date = yesterday_date and temperature > prev_temp;
```
