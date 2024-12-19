
-- Create a list of customer names who placed an order in a particular month.
SELECT STRING_AGG(c.name, ', ') as customer_names
FROM public.customers c
         JOIN public.orders o on c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2023-01-01' AND '2023-01-31';