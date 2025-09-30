**1517. Find Users With Valid E-Mails**

# Description

https://leetcode.com/problems/find-users-with-valid-e-mails

# Solution

```
SELECT *
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9._-]*@leetcode[.]com$')
```
