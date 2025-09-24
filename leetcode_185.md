**185. Department Top Three Salaries**

# Description

https://leetcode.com/problems/department-top-three-salaries/description/


# Solution

```
select  d.name as Department,e.name as Employee,Salary 
from  (select Id,Name ,Salary,DepartmentId,dense_rank() 
 over(partition by DepartmentId order by salary desc) as rnk from Employee) e 
 join Department d on e.DepartmentId=d.id where rnk <=3;
```
