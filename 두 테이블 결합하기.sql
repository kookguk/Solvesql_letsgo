select
 DISTINCT athlete_id
from
  records a
  join events b on a.event_id = b.id
where
  b.sport = 'Golf'