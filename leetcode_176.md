# Discription

https://leetcode.com/problems/second-highest-salary/description/
  
# Solution 
```
select salary as SecondHighestSalary from (
select salary,dense_rank() over(order by salary ) as rnk from leetcode.employee_176) tbl where tbl.rnk = 2;
```
