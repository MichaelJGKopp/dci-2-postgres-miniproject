-- Truncate data from order_items table
TRUNCATE TABLE public.order_items RESTART IDENTITY CASCADE;

-- Truncate data from orders table
TRUNCATE TABLE public.orders RESTART IDENTITY CASCADE;

-- Truncate data from products table
TRUNCATE TABLE public.products RESTART IDENTITY CASCADE;

-- Truncate data from customers table
TRUNCATE TABLE public.customers RESTART IDENTITY CASCADE;