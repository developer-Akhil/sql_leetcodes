# Description

https://leetcode.com/problems/rank-scores/description/
  

# Solution
```
select score,dense_rank() over(order by score desc) as score from leetcode.Scores_178;
```
