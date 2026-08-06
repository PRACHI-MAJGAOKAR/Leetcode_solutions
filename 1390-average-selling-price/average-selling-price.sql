# Write your MySQL query statement below
select p.product_id, IFNULL(ROUND(SUM(p.price * u.units) / SUM(u.units), 2), 0) as average_price
from prices p
left join unitssold u 
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id

# left join unitssold u  using (product_id)  where u.purchase_date between p.start_date and p.end_date
#  First, the LEFT JOIN happens. Products with no sales get a row where us.purchase_date is NULL. Next, the WHERE clause runs. It evaluates NULL BETWEEN p.start_date AND p.end_date. In SQL, comparing NULL to anything results in Unknown (False).Result: The WHERE clause completely deletes any products that had 0 sales. It accidentally converts your LEFT JOIN into an INNER JOIN
