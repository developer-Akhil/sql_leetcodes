Create table If Not Exists leetcode.Employee_184 (id int, name varchar(255), salary int, departmentId int);
Create table If Not Exists leetcode.Department_184 (id int, name varchar(255));

Truncate table leetcode.Employee_184;
insert into leetcode.Employee_184 (id, name, salary, departmentId) values ('1', 'Joe', '70000', '1');
insert into leetcode.Employee_184 (id, name, salary, departmentId) values ('2', 'Jim', '90000', '1');
insert into leetcode.Employee_184 (id, name, salary, departmentId) values ('3', 'Henry', '80000', '2');
insert into leetcode.Employee_184 (id, name, salary, departmentId) values ('4', 'Sam', '60000', '2');
insert into leetcode.Employee_184 (id, name, salary, departmentId) values ('5', 'Max', '90000', '1');

Truncate table leetcode.Department_184;
insert into leetcode.Department_184 (id, name) values ('1', 'IT');
insert into leetcode.Department_184 (id, name) values ('2', 'Sales');

select * from leetcode.Department_184;

select * from leetcode.Employee_184;
-- over(partition by dept.name order by dept.name)

select dept.name as Department, emp.name as Employee,  Salary  from leetcode.Employee_184 emp join leetcode.Department_184 dept on dept.id = emp.departmentId where 
(emp.departmentId,emp.salary) in (select departmentId,  max(salary)  from leetcode.Employee_184 group by departmentId);
