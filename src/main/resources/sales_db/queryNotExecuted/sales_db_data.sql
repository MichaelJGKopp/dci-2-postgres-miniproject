-- Insert data into customers table with real names and emails
INSERT INTO public.customers (name, email, registration_date)
VALUES ('John Doe', 'john.doe@example.com', '2023-10-01'),
       ('Jane Smith', 'jane.smith@example.com', '2023-08-15'),
       ('Michael Johnson', 'michael.johnson@example.com', '2023-07-20'),
       ('Emily Davis', 'emily.davis@example.com', '2023-05-30'),
       ('Daniel Williams', 'daniel.williams@example.com', '2023-04-12'),
       ('Olivia Brown', 'olivia.brown@example.com', '2023-03-10'),
       ('Sophia Wilson', 'sophia.wilson@example.com', '2023-02-28'),
       ('Liam Miller', 'liam.miller@example.com', '2023-01-05'),
       ('Charlotte Moore', 'charlotte.moore@example.com', '2022-12-15'),
       ('Amelia Taylor', 'amelia.taylor@example.com', '2022-11-18'),
       ('James Anderson', 'james.anderson@example.com', '2022-10-30'),
       ('Isabella Thomas', 'isabella.thomas@example.com', '2022-09-25'),
       ('Ethan Jackson', 'ethan.jackson@example.com', '2022-08-12'),
       ('Madison White', 'madison.white@example.com', '2022-07-08'),
       ('Alexander Harris', 'alexander.harris@example.com', '2022-06-15'),
       ('Mia Martin', 'mia.martin@example.com', '2022-05-25'),
       ('Lucas Clark', 'lucas.clark@example.com', '2022-04-20'),
       ('Ella Lewis', 'ella.lewis@example.com', '2022-03-18'),
       ('Henry Young', 'henry.young@example.com', '2022-02-10'),
       ('Avery Walker', 'avery.walker@example.com', '2022-01-01'),
       ('Jackson Allen', 'jackson.allen@example.com', '2023-11-20'),
       ('Harper Scott', 'harper.scott@example.com', '2023-09-12'),
       ('Benjamin King', 'benjamin.king@example.com', '2023-08-25'),
       ('Grace Adams', 'grace.adams@example.com', '2023-07-18'),
       ('Sebastian Nelson', 'sebastian.nelson@example.com', '2023-06-05'),
       ('Zoe Carter', 'zoe.carter@example.com', '2023-05-10'),
       ('Samuel Mitchell', 'samuel.mitchell@example.com', '2023-04-05'),
       ('Victoria Perez', 'victoria.perez@example.com', '2023-03-20'),
       ('Michael Kopp', 'myemail@example.com', '2024-12-13'),
       ('Jack Roberts', 'jack.roberts@example.com', '2023-02-14');

-- Insert data into products table with realistic product names and categories
INSERT INTO public.products (name, price, category)
VALUES ('iPhone 14', 999.99, 'Electronics'),
       ('Samsung Galaxy S22', 799.99, 'Electronics'),
       ('Sony WH-1000XM5', 349.99, 'Electronics'),
       ('Apple MacBook Pro 16"', 2499.99, 'Electronics'),
       ('Logitech MX Master 3', 99.99, 'Electronics'),
       ('Nikon Z6 II', 1799.99, 'Electronics'),
       ('Sony PlayStation 5', 499.99, 'Gaming'),
       ('Nintendo Switch OLED', 349.99, 'Gaming'),
       ('Apple AirPods Pro', 249.99, 'Electronics'),
       ('Bose QuietComfort 45', 329.99, 'Electronics'),
       ('Fitbit Charge 5', 149.99, 'Health & Fitness'),
       ('Peloton Bike', 1895.00, 'Health & Fitness'),
       ('GoPro HERO10 Black', 499.99, 'Electronics'),
       ('Microsoft Surface Pro 8', 1099.99, 'Electronics'),
       ('Amazon Echo Dot 4th Gen', 49.99, 'Home & Kitchen'),
       ('KitchenAid Stand Mixer', 379.99, 'Home & Kitchen'),
       ('Instant Pot Duo 7-in-1', 89.99, 'Home & Kitchen'),
       ('Le Creuset Dutch Oven', 350.00, 'Home & Kitchen'),
       ('Samsung 65" 4K TV', 799.99, 'Home Entertainment'),
       ('LG OLED 55" TV', 1599.99, 'Home Entertainment'),
       ('Nike Air Zoom Pegasus 39', 120.00, 'Clothing'),
       ('Adidas Ultraboost 22', 180.00, 'Clothing'),
       ('Patagonia Down Sweater', 229.00, 'Clothing'),
       ('The North Face ThermoBall Jacket', 199.00, 'Clothing'),
       ('Ray-Ban Wayfarer Sunglasses', 160.00, 'Accessories'),
       ('Fossil Hybrid HR Smartwatch', 179.99, 'Accessories'),
       ('Tissot PRX Watch', 275.00, 'Accessories'),
       ('Kendra Scott Earrings', 60.00, 'Accessories'),
       ('Canon EOS R5', 3899.99, 'Electronics'),
       ('SSD WD 850 Black', 60.00, 'Electronics');

-- Insert data into orders table, making sure customer_id references existing customer records (1 to 30)
INSERT INTO public.orders (customer_id, total_order_amount, order_date)
VALUES (1, 1099.99, '2023-10-02'),
       (2, 799.99, '2023-08-16'),
       (3, 349.99, '2023-07-22'),
       (4, 2499.99, '2023-06-01'),
       (5, 99.99, '2023-04-13'),
       (6, 1799.99, '2023-03-12'),
       (7, 499.99, '2023-02-05'),
       (8, 349.99, '2023-01-06'),
       (9, 249.99, '2022-12-18'),
       (10, 329.99, '2022-11-22'),
       (11, 149.99, '2022-10-10'),
       (12, 1895.00, '2022-09-15'),
       (13, 499.99, '2022-08-03'),
       (14, 1099.99, '2022-07-28'),
       (15, 49.99, '2022-06-14'),
       (16, 379.99, '2022-05-06'),
       (17, 89.99, '2022-04-10'),
       (18, 350.00, '2022-03-22'),
       (19, 799.99, '2022-02-18'),
       (20, 1599.99, '2022-01-30'),
       (21, 120.00, '2023-11-21'),
       (22, 180.00, '2023-09-14'),
       (23, 229.00, '2023-08-22'),
       (24, 199.00, '2023-07-19'),
       (25, 160.00, '2023-06-12'),
       (26, 179.99, '2023-05-23'),
       (27, 275.00, '2023-04-09'),
       (28, 60.00, '2023-03-14'),
       (29, 3899.99, '2023-02-25'),
       (30, 799.99, '2023-01-15');

-- Insert data into order_items table, ensuring each order references an order_id and each product references a product_id
INSERT INTO public.order_items (product_id, quantity, price, order_id)
VALUES (1, 1, 999.99, 1),
       (2, 1, 799.99, 2),
       (3, 2, 174.99, 3),
       (4, 1, 2499.99, 4),
       (5, 1, 99.99, 5),
       (6, 1, 1799.99, 6),
       (7, 1, 499.99, 7),
       (8, 1, 349.99, 8),
       (9, 2, 249.99, 9),
       (10, 1, 329.99, 10),
       (11, 1, 149.99, 11),
       (12, 1, 1895.00, 12),
       (13, 1, 499.99, 13),
       (14, 1, 1099.99, 14),
       (15, 3, 49.99, 15),
       (16, 1, 379.99, 16),
       (17, 1, 89.99, 17),
       (18, 1, 350.00, 18),
       (19, 1, 799.99, 19),
       (20, 1, 1599.99, 20),
       (21, 1, 120.00, 21),
       (22, 1, 180.00, 22),
       (23, 1, 229.00, 23),
       (24, 2, 199.00, 24),
       (25, 1, 160.00, 25),
       (26, 1, 179.99, 26),
       (27, 1, 275.00, 27),
       (28, 2, 60.00, 28),
       (29, 1, 3899.99, 29),
       (30, 1, 799.99, 30);