WITH avg_spending AS (SELECT ROUND(AVG(total_spending),2) as avg_total_spending
 FROM (SELECT SUM(o.total_order_amount) AS total_spending
       FROM public.orders o
       GROUP BY o.customer_id) subquery)

SELECT c.customer_id, c.name, SUM(o.total_order_amount) AS total_spending, avg_spending.avg_total_spending
FROM public.customers c
         JOIN public.orders o on c.customer_id = o.customer_id
CROSS JOIN avg_spending
GROUP BY c.customer_id, c.name, avg_spending.avg_total_spending
HAVING SUM(o.total_order_amount) > avg_spending.avg_total_spending
ORDER BY total_spending DESC, c.name