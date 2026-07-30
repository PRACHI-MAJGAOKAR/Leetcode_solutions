# Write your MySQL query statement below
select e1.name
from employee e1
cross join employee e2
on e2.managerid = e1.id
group by e2.managerid
having count(*) >= 5
