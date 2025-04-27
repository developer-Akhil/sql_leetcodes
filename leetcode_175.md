**175. Combine Two Tables**

# Description
https://leetcode.com/problems/combine-two-tables/description/


# Solution
```
select firstName, lastName, city, state from
leetcode.Person_175 p left join leetcode.Address_175 a
on p.personId = a.personId; 
```
