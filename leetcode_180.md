# Description

https://leetcode.com/problems/consecutive-numbers/description/
    
# Solution

with cte as (
select * , lead(num,1) over() as next_val, lead(num,2) over() as next_val_2 from leetcode.logs_180)
select num from cte
where num = next_val and num = next_val_2 group by num;


with cte as (
    select num,
    lead(num,1) over() num1,
    lead(num,2) over() num2
    from leetcode.logs_180

)
select distinct num ConsecutiveNums from cte where (num=num1) and (num=num2);
