select strftime('%Y-%m-%d', order_purchase_timestamp) as dt, round(sum(payment_value),2) as revenue_daily
from olist_orders_dataset a
join olist_order_payments_dataset b
on a.order_id = b.order_id
where dt >= '2018-01-01'
group by dt
order by dt