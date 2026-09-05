-- Cynaris Internship
-- Week 1 Day 1: SQL Fundamentals
-- Topic: SELECT, FROM, WHERE

USE cynaris_sales;

-- Query 1: Display all sales records
SELECT *
FROM sales;

-- Query 2: Display customer name, product, and price
SELECT customer_name, product, price
FROM sales;

-- Query 3: Find sales from Bengaluru
SELECT *
FROM sales
WHERE city = 'Bengaluru';

-- Query 4: Find Electronics sales from Bengaluru
SELECT *
FROM sales
WHERE category = 'Electronics'
AND city = 'Bengaluru';

-- Query 5: Find sales from Bengaluru or Mumbai
SELECT *
FROM sales
WHERE city = 'Bengaluru'
OR city = 'Mumbai';

-- Query 6: Find sales that are NOT from Bengaluru
SELECT *
FROM sales
WHERE NOT city = 'Bengaluru';

-- Query 7: Find customers whose name starts with P
SELECT *
FROM sales
WHERE customer_name LIKE 'P%';

-- Query 8: Find sales from Bengaluru, Mumbai, or Chennai
SELECT *
FROM sales
WHERE city IN ('Bengaluru', 'Mumbai', 'Chennai');

-- Query 9: Find sales where price is between 2000 and 30000
SELECT *
FROM sales
WHERE price BETWEEN 2000 AND 30000;

-- Query 10: Find sales where city is unknown
SELECT *
FROM sales
WHERE city IS NULL;