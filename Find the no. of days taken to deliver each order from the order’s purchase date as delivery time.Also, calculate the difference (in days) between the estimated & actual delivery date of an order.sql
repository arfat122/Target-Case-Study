SELECT *
,TIMESTAMP_DIFF(order_delivered_customer_date,order_purchase_timestamp,DAY) AS time_to_deliver
,TIMESTAMP_DIFF(order_estimated_delivery_date,order_delivered_customer_date,DAY) AS diff_estimated_delivery
FROM `Target_Case_Study.orders`
WHERE order_status IN ('delivered')
AND order_delivered_customer_date IS NOT NULL
ORDER BY time_to_deliver