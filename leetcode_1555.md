# 1555. Bank Account Summary

Table: ``Users``

```
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| user_id      | int     |
| user_name    | varchar |
| credit       | int     |
+--------------+---------+
user_id is the primary key for this table.
Each row of this table contains the current credit information for each user.
```

Table: ``Transactions``

```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| trans_id      | int     |
| paid_by       | int     |
| paid_to       | int     |
| amount        | int     |
| transacted_on | date    |
+---------------+---------+
trans_id is the primary key for this table.
Each row of this table contains the information about the transaction in the bank.
User with id (paid_by) transfer money to user with id (paid_to).
```

Leetcode Bank (LCB) helps its coders in making virtual payments. Our bank records all transactions in the table Transaction, we want to find out the current balance of all users and check whether they have breached their credit limit (If their current credit is less than 0).

Write an SQL query to report.

* ``user_id``
* ``user_name``
* ``credit``, current balance after performing transactions.
* ``credit_limit_breached``, check credit_limit ("Yes" or "No")

Return the result table in any order.


# Solution
```
with cte as (
select u.user_id, ifnull(sum(case when u.user_id = t.paid_by then -1*t.amount else 0 end ),0) + u.credit as total 
from users u left join transactions t 
on u.user_id = t.paid_by or u.user_id = t.paid_to
group by u.user_id, u.credit )
select u.user_id, u.user_name, c.total as credit, case when c.total > 0 then 'No' else 'Yes' end as credit_limit_breached from users u left join cte as c on u.user_id = c.user_id;
```
