select name
from athletes a
join records r on a.id = r.athlete_id
join games g on r.game_id = g.id
where g.year >= 2000 and medal is not null
group by a.id
having count(DISTINCT r.team_id) >= 2
order by name