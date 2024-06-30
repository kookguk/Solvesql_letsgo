select a.station_id, a.name
from station a
join station b 
on a.station_id != b.station_id
where a.updated_at < b.updated_at and 
(6371 * acos(cos(radians(a.lat)) * cos(radians(b.lat)) * cos(radians(b.lng) - radians(a.lng)) + sin(radians(a.lat)) * sin(radians(b.lat)))) < 0.3
group by a.station_id
having count(a.station_id) >= 5