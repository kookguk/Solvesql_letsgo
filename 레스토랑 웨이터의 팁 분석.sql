select day, time, round(avg(tip),2)as avg_tip, round(avg(size),2)as avg_size
from tips
group by day, time
order by day, time