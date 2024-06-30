SELECT order_date
      ,count(distinct CASE WHEN category = "Furniture" THEN order_id END) as furniture
      ,round((count(distinct CASE WHEN category = "Furniture" THEN order_id END)/(count(distinct order_id)+0.00))*100,2) as furniture_pct
FROM records
where order_date in (select order_date from records group by order_date having count(distinct order_id)>=10)
GROUP BY order_date
HAVING furniture_pct >= 40
ORDER BY furniture_pct desc, order_date