# Write your MySQL query statement below
select max(num) as num
from mynumbers
group by num
having count(*) = 1 union all select null
order by num desc
limit 1