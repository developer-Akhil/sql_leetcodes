**1148. Article Views I**

# Discription

https://leetcode.com/problems/article-views-i/description/

# Solution

```
select author_id as id from views where author_id = viewer_id group by author_id order by author_id;
```
