select a.artist_id, a.name
from artists a
where artist_id not in (select artist_id from artworks_artists) and death_year is not null