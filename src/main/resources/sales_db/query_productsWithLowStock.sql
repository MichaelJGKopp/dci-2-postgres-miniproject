
-- Identify products with stock below a certain threshold (e.g., products with less than 10 items in stock).

-- extra stock column in products table
ALTER TABLE products
    ADD COLUMN stock INT;

-- update stock column
UPDATE products
SET stock = ROUND(10 + (RANDOM() - 0.5) * 10)
WHERE product_id IN (
    SELECT product_id
    FROM products
);

-- actual query to identify products with stock below 10
SELECT p.product_id, p.name, p.stock
FROM public.products p
WHERE p.stock < 10;