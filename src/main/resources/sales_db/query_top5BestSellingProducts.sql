WITH best_selling_products AS (
    SELECT p.name, SUM(oi.quantity) AS qty_sold
    FROM public.products p
             JOIN public.order_items oi ON p.product_id = oi.product_id
    GROUP BY p.name
    ORDER BY qty_sold DESC
)

SELECT bso.name, bso.qty_sold
FROM best_selling_products as bso
WHERE bso.qty_sold in (SELECT qty_sold FROM best_selling_products LIMIT 5);