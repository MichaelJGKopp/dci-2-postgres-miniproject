-- Identify products that have been sold in multiple orders.
SELECT p.product_id, p.name, COUNT(oi.order_id) AS num_orders
FROM public.products p
JOIN public.order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name
HAVING COUNT(oi.order_id) > 1
ORDER BY COUNT(oi.order_id) DESC