**182. Duplicate Emails**

# Description

https://leetcode.com/problems/duplicate-emails/description/

# Solution
```
select email from leetcode.person_182
group by email
having count(email) >= 2;
```
