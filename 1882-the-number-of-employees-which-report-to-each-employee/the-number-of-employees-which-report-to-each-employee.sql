# Write your MySQL query statement below
select s.employee_id, s.name, count(e.employee_id) as reports_count, round(avg(e.age), 0) as average_age
from employees e
join employees s
on s.employee_id = e.reports_to
group by e.reports_to
order by s.employee_id