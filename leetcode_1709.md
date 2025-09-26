**1709. Biggest Window Between Visits**

# Description

Table: ``UserVisits``

```
+-------------+------+
| Column Name | Type |
+-------------+------+
| user_id     | int  |
| visit_date  | date |
+-------------+------+
This table does not have a primary key.
This table contains logs of the dates that users vistied a certain retailer.
```

Assume today's date is ```'2021-1-1'```.

Write an SQL query that will, for each ``user_id``, find out the largest ``window`` of days between each visit and the one right after it (or today if you are considering the last visit).

Return the result table ordered by ``user_id``.

The query result format is in the following example:

```
UserVisits table:
+---------+------------+
| user_id | visit_date |
+---------+------------+
| 1       | 2020-11-28 |
| 1       | 2020-10-20 |
| 1       | 2020-12-3  |
| 2       | 2020-10-5  |
| 2       | 2020-12-9  |
| 3       | 2020-11-11 |
+---------+------------+
Result table:
+---------+---------------+
| user_id | biggest_window|
+---------+---------------+
| 1       | 39            |
| 2       | 65            |
| 3       | 51            |
+---------+---------------+
For the first user, the windows in question are between dates:
    - 2020-10-20 and 2020-11-28 with a total of 39 days.
    - 2020-11-28 and 2020-12-3 with a total of 5 days.
    - 2020-12-3 and 2021-1-1 with a total of 29 days.
Making the biggest window the one with 39 days.
For the second user, the windows in question are between dates:
    - 2020-10-5 and 2020-12-9 with a total of 65 days.
    - 2020-12-9 and 2021-1-1 with a total of 23 days.
Making the biggest window the one with 65 days.
For the third user, the only window in question is between dates 2020-11-11 and 2021-1-1 with a total of 51 days.
```

# Solution

```
with cte as (select *, Lead(visit_date,1) over(partition by user_id order by visit_date) as next_date from uservisits),
cte2 as (select user_id, case when next_date is not null then dateDiff(next_date,visit_date) else datediff(cast('2021-01-01' as date),visit_date) as
window from cte)
select user_id, max(window) as biggest_window from cte2 group by user_id order by user_id
```


 

