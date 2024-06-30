SELECT 
    strftime('%Y-%m-%d', o.order_purchase_timestamp) AS purchase_date,
    COUNT(CASE WHEN o.order_estimated_delivery_date >= o.order_delivered_customer_date THEN o.order_id END) AS success,
    COUNT(CASE WHEN o.order_estimated_delivery_date < o.order_delivered_customer_date THEN o.order_id END) AS fail
FROM olist_orders_dataset AS o
WHERE o.order_purchase_timestamp like '2017-01%'
      AND o.order_delivered_customer_date IS NOT NULL 
      AND o.order_estimated_delivery_date IS NOT NULL
GROUP BY purchase_date
ORDER BY purchase_date;