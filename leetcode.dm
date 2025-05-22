 # Description


Table: 'Subscriptions'

  '''
  +-------------+------+
| Column Name | Type |
+-------------+------+
| account_id  | int  |
| start_date  | date |
| end_date    | date |
+-------------+------+
account_id is the primary key column for this table.
Each row of this table indicates the start and end dates of an account's subscription.
Note that always start_date < end_date.
'''
