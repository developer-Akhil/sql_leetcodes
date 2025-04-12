**178. Rank Scores**

# Description

https://leetcode.com/problems/rank-scores/description/
  

# Solution
```
select score,dense_rank() over(order by score desc) as score from leetcode.scores_178;
```
