SELECT p.category, SUM(oi.quantity * oi.price) AS total_sales
FROM public.products p
         JOIN public.order_items oi ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY total_sales DESC, p.category ASC;