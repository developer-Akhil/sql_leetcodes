# Description

https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
  
# Solution
```
select emp.name as employee from  LEETCODE.Employee_180 emp join
leetcode.Employee_180 mng on emp.managerId = mng.id
where emp.salary > mng.salary;
```
