**181. Employees Earning More Than Their Managers**

# Description

https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
  
# Solution
```
select emp.name as employee from  leetcode.employee_180 emp join
leetcode.employee_180 mng on emp.managerId = mng.id
where emp.salary > mng.salary;
```
