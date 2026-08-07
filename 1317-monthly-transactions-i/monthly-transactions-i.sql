# Write your MySQL query statement below
select date_format(trans_date, '%Y-%m') as month, country, count(id) as trans_count, sum(case when state= 'approved' then 1 else 0 end) as approved_count, sum(amount) as trans_total_amount, sum((state= 'approved')* amount) as approved_total_amount
from transactions
#where state = 'approved'
group by month, country