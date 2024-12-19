-- Delete data from order_items table first to avoid foreign key constraint violation
DELETE FROM public.order_items;

-- Delete data from orders table
DELETE FROM public.orders;

-- Delete data from products table
DELETE FROM public.products;

-- Delete data from customers table
DELETE FROM public.customers;
