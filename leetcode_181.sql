
Create table If Not Exists LEETCODE.Employee_180 (id int, name varchar(255), salary int, managerId int);
Truncate table LEETCODE.Employee;
insert into LEETCODE.Employee_180 (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
insert into LEETCODE.Employee_180 (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
insert into LEETCODE.Employee_180 (id, name, salary, managerId) values ('3', 'Sam', '60000', null);
insert into LEETCODE.Employee_180 (id, name, salary, managerId) values ('4', 'Max', '90000', null);

drop table LEETCODE.Employee_180;
select * from LEETCODE.Employee_180;

select emp.name as employee from  LEETCODE.Employee_180 emp join LEETCODE.Employee_180 mng on emp.managerId = mng.id where emp.salary > mng.salary;
