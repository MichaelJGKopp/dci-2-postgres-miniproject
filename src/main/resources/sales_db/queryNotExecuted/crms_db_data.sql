
-- Insert fake data into customers table
INSERT INTO public.customers (name, address, phone) VALUES
                                                        ('John Doe', '123 Main St, Springfield', '555-1234'),
                                                        ('Jane Smith', '456 Elm St, Shelbyville', '555-5678'),
                                                        ('Alice Johnson', '789 Oak St, Capital City', '555-9012'),
                                                        ('Bob Brown', '101 Maple St, Ogdenville', '555-3456'),
                                                        ('Charlie White', '202 Pine St, North Haverbrook', '555-7890'),
                                                        ('Daisy Green', '303 Birch St, Springfield', '555-2345'),
                                                        ('Ethan Black', '404 Cedar St, Shelbyville', '555-6789'),
                                                        ('Fiona Grey', '505 Walnut St, Capital City', '555-0123'),
                                                        ('George Blue', '606 Ash St, Ogdenville', '555-4567'),
                                                        ('Hannah Yellow', '707 Chestnut St, North Haverbrook', '555-8901');

-- Insert fake data into cars table
INSERT INTO public.cars (brand, model, rental_price_per_day, availability_status) VALUES
                                                                                      ('Toyota', 'Camry', 40.00, TRUE),
                                                                                      ('Honda', 'Civic', 35.00, TRUE),
                                                                                      ('Ford', 'Focus', 30.00, TRUE),
                                                                                      ('Chevrolet', 'Malibu', 45.00, TRUE),
                                                                                      ('Nissan', 'Altima', 50.00, FALSE),
                                                                                      ('Hyundai', 'Elantra', 33.00, TRUE),
                                                                                      ('Kia', 'Optima', 37.00, TRUE),
                                                                                      ('Volkswagen', 'Passat', 42.00, TRUE),
                                                                                      ('Subaru', 'Impreza', 38.00, TRUE),
                                                                                      ('Mazda', 'Mazda3', 36.00, TRUE);

-- Insert fake data into rentals table
INSERT INTO public.rentals (customer_id, car_id, rental_date, return_date, total_cost) VALUES
                                                                                           (1, 1, '2024-12-01', '2024-12-05', 160.00),
                                                                                           (2, 2, '2024-12-02', '2024-12-06', 140.00),
                                                                                           (3, 3, '2024-12-03', '2024-12-04', 60.00),
                                                                                           (4, 4, '2024-12-04', '2024-12-07', 135.00),
                                                                                           (5, 5, '2024-12-05', '2024-12-10', 250.00),
                                                                                           (6, 6, '2024-12-06', '2024-12-08', 66.00),
                                                                                           (7, 7, '2024-12-07', '2024-12-09', 74.00),
                                                                                           (8, 8, '2024-12-08', '2024-12-11', 126.00),
                                                                                           (9, 9, '2024-12-09', '2024-12-12', 114.00),
                                                                                           (10, 10, '2024-12-10', '2024-12-13', 108.00);