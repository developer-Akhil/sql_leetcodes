**1693. Daily Leads and Partners**

# Description

https://leetcode.com/problems/daily-leads-and-partners/description/


# Solution

```
select tbl1.date_id, tbl1.make_name, unique_leads, unique_partners from (
select  date_id, make_name, unique_leads, dense_rank() over(order by date_id, make_name) as rnk from (
select date_id, make_name, count(distinct lead_id) as unique_leads from DailySales group by date_id, make_name) tbl) tbl1
join 
(select  date_id, make_name, unique_partners, dense_rank() over(order by date_id, make_name) as rnk from (
select date_id, make_name, count(distinct partner_id) as unique_partners from DailySales group by date_id, make_name) tbl) tbl2
on tbl1.rnk = tbl2.rnk;
```
