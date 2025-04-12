# Descirpation

https://leetcode.com/problems/duplicate-emails/description/

# Solution
```
select email fromleetcode.person_182
group by email
having count(email) >= 2;
```
