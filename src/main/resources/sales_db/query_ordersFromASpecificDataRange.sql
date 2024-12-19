-- Identify all orders placed within a specific date range (e.g., between January 1st and March 31st).
SELECT *
FROM public.orders o
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-03-31'
ORDER BY o.order_date