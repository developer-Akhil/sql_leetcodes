# Description
184. Department Highest Salary

https://leetcode.com/problems/department-highest-salary/

# Solution
```
select dept.name as department, emp.name as employee,  salary  from leetcode.employee_184 emp 
  join leetcode.department_184 dept on dept.id = emp.departmentId 
  where  (emp.departmentId,emp.salary) in (select departmentId,  max(salary)  
  from leetcode.employee_184 group by departmentId);
```
