**1378. Replace Employee ID With The Unique Identifier**


# Description

https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/


# Solution

```
select unique_id, name from employees emp left join EmployeeUNI emp_uni on emp.id = emp_uni.id ;
```
