**1978. Employees Whose Manager Left the Company**


# Discription

https://leetcode.com/problems/employees-whose-manager-left-the-company/description/

# Solution

select employee_id from Employees where salary < 30000 and manager_id not in (select employee_id from Employees) order by employee_id;

