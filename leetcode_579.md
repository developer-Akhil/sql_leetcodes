**579. Find Cumulative Salary of an Employee**

# Description

Write a solution to calculate the cumulative salary summary for every employee in a single unified table.

The cumulative salary summary for an employee can be calculated as follows:

For each month that the employee worked, sum up the salaries in that month and the previous two months. This is their 3-month sum for that month. If an employee did not work for the company in previous months, their effective salary for those months is 0.

Do not include the 3-month sum for the most recent month that the employee worked for in the summary.

Do not include the 3-month sum for any month the employee did not work.

Return the result table ordered by id in ascending order. In case of a tie, order it by month in descending order.

The result format is in the following example.

**Example
Input**
```
| Id | Month | Salary |
|----|-------|--------|
| 1  | 1     | 20     |
| 2  | 1     | 20     |
| 1  | 2     | 30     |
| 2  | 2     | 30     |
| 3  | 2     | 40     |
| 1  | 3     | 40     |
| 3  | 3     | 60     |
| 1  | 4     | 60     |
| 3  | 4     | 70     |
```

**Output**
```
| Id | Month | Salary |
|----|-------|--------|
| 1  | 3     | 90     |
| 1  | 2     | 50     |
| 1  | 1     | 20     |
| 2  | 1     | 20     |
| 3  | 3     | 100    |
| 3  | 2     | 40     |
```

**Explanation**
Employee '1' has 3 salary records for the following 3 months except the most recent month '4': salary 40 for month '3', 30 for month '2' and 20 for month '1' \
So the cumulative sum of salary of this employee over 3 months is 90(40+30+20), 50(30+20) and 20 respectively.

```
| Id | Month | Salary |
|----|-------|--------|
| 1  | 3     | 90     |
| 1  | 2     | 50     |
| 1  | 1     | 20     |
```

Employee '2' only has one salary record (month '1') except its most recent month '2'.
```
| Id | Month | Salary |
|----|-------|--------|
| 2  | 1     | 20     |
```

Employ '3' has two salary records except its most recent pay month '4': month '3' with 60 and month '2' with 40. So the cumulative salary is as following.
```
| Id | Month | Salary |
|----|-------|--------|
| 3  | 3     | 100    |
| 3  | 2     | 40     |
```

# Soultion
