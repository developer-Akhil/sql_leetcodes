
# 597. Friend Requests I: Overall Acceptance Rate

Table: ``FriendRequest``

```
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| sender_id      | int     |
| send_to_id     | int     |
| request_date   | date    |
+----------------+---------+

This table may contain duplicates (In other words, there is no primary key for this table in SQL).
This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date of the request.
```

Table: ``RequestAccepted``
```
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| requester_id   | int     |
| accepter_id    | int     |
| accept_date    | date    |
+----------------+---------+
This table may contain duplicates (In other words, there is no primary key for this table in SQL).
This table contains the ID of the user who sent the request, the ID of the user who received the request, and the date when the request was accepted.
```

**Note that**:

**1.** The accepted requests are not necessarily from the table friend_request. In this case, you just need to simply count the total accepted requests (no matter whether they are in the original requests), and divide it by the number of requests to get the acceptance rate.

**2.** It is possible that a sender sends multiple requests to the same receiver, and a request could be accepted more than once. In this case, the ‘duplicated’ requests or acceptances are only counted once.

**3.** If there is no requests at all, you should return 0.00 as the accept_rate.

The result format is in the following example.


```
Table: friend_request
| sender_id | send_to_id |request_date|
|-----------|------------|------------|
| 1         | 2          | 2016_06-01 |
| 1         | 3          | 2016_06-01 |
| 1         | 4          | 2016_06-01 |
| 2         | 3          | 2016_06-02 |
| 3         | 4          | 2016-06-09 |
|-----------|------------|------------|

Table: request_accepted

| requester_id | accepter_id |accept_date |
|--------------|-------------|------------|
| 1            | 2           | 2016_06-03 |
| 1            | 3           | 2016-06-08 |
| 2            | 3           | 2016-06-08 |
| 3            | 4           | 2016-06-09 |
| 3            | 4           | 2016-06-10 |

```
Write a query to find the overall acceptance rate of requests rounded to 2 decimals, which is the number of acceptance divide the number of requests.

For the sample data above, your query should return the following result.

```
|accept_rate|
|-----------|
|       0.80|
```

**Explanation**: There are 4 unique accepted requests, and there are 5 requests in total. So the rate is 0.80.
 
**Follow-up**:
Can you write a query to return the accept rate but for every month?
How about the cumulative accept rate for every day?

# Solution

```
select ifnull (round(
((select count(*) from 
(select distinct requester_id,accepter_id from leetcode.request_accepted_597) as accepted_request)/
(select count(*) from 
(select distinct sender_id,send_to_id from leetcode.friend_request_597) as request_send)),2),0.00) as accept_rate;
```
