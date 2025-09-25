**603. Consecutive Available Seats 🔒**

# Description 

Several friends at a cinema ticket office would like to reserve consecutive available seats.
Can you help to query all the consecutive available seats order by the seat_id using the following cinema table?

cinema table

```
| seat_id | free |
|---------|------|
| 1       | 1    |
| 2       | 0    |
| 3       | 1    |
| 4       | 1    |
| 5       | 1    |

```
Your query should return the following result for the sample case above.

```
| seat_id |
|---------|
| 3       |
| 4       |
| 5       |

```
Note:\
The seat_id is an auto increment int, and free is bool (‘1’ means free, and ‘0’ means occupied.).\
Consecutive available seats are more than 2(inclusive) seats consecutively available.


# Solution

```
select seat_id from
(select *,Lead(free) over (order by seat_id) as next_seat,Lag(free) over(order by seat_id) as previous_seat from cinema) tbl
where (next_seat=1 and free = 1) or (previous_seat = 1 and free=1) order by seat_id;

```
