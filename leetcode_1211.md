**1211. Queries Quality and Percentage**

# Description 

https://leetcode.com/problems/queries-quality-and-percentage/description/



# Solution

```
select query_name, round(avg(rating/position),2) as quality,
round(avg(rating<3)*100,2) as poor_query_percentage from queries
where query_name is not null
group by query_name;
```
