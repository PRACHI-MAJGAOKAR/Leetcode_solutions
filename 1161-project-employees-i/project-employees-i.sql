# Write your MySQL query statement below
select p.project_id, round(avg(e.experience_years), 2) as average_years
from project p
left join employee e
using (employee_id)
where experience_years is not NULL
group by p.project_id