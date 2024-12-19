
-- Calculate the average order value for each customer.
SELECT c.customer_id, c.name, AVG(o.total_order_amount) AS avg_order_value, COUNT(o.order_id) AS order_count
FROM public.customers c
         JOIN public.orders o on c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY AVG(o.total_order_amount) DESC, c.name