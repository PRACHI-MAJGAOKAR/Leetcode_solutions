# Write your MySQL query statement below
Select round(count(distinct a.player_id)/(select count(distinct player_id) from activity), 2) as fraction
From Activity a
Left join (
    Select
        player_id,
        MIN(event_date) AS fd
    From Activity
    Group by player_id
) b
Using(player_id)
Where datediff(a.event_date, b.fd) = 1