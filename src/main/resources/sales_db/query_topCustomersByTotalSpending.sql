WITH total_spending AS (SELECT o.customer_id, SUM(o.total_order_amount) AS sum_total_spending
                        FROM public.orders o
                        GROUP BY o.customer_id
                        ORDER BY sum_total_spending DESC)

SELECT c.customer_id, c.name, ts.sum_total_spending AS total_spending
FROM public.customers c
         JOIN total_spending ts on c.customer_id = ts.customer_id
WHERE ts.sum_total_spending IN (SELECT sum_total_spending FROM total_spending LIMIT 10)
GROUP BY c.customer_id, c.name, ts.sum_total_spending
ORDER BY ts.sum_total_spending DESC;