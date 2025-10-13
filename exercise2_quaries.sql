-- ============================================
-- Exercise 2: SQL String, Math, and Date Functions Practice
-- Database: store_db
-- Table: products
-- ============================================

-- 1️⃣ Find all products whose name starts with the letter 'S'
SELECT * 
FROM products
WHERE name LIKE 'S%';

-- 2️⃣ Find all products whose description contains the word 'with'
SELECT * 
FROM products
WHERE description LIKE '%with%';

-- 3️⃣ Find all products whose name ends with 'er'
SELECT * 
FROM products
WHERE name LIKE '%er';

-- 4️⃣ Find all products whose category contains 'on' (case-insensitive)
SELECT * 
FROM products
WHERE LOWER(category) LIKE '%on%';

-- 5️⃣ Find all products whose name contains exactly 5 characters
SELECT * 
FROM products
WHERE LENGTH(name) = 5;

-- 6️⃣ Display the product names and their corresponding lengths
SELECT 
    name AS product_name,
    LENGTH(name) AS name_length
FROM products;

-- 7️⃣ Display product names in uppercase
SELECT 
    UPPER(name) AS uppercase_name
FROM products;

-- 8️⃣ Extract the first 10 characters of each product description
SELECT 
    name AS product_name,
    LEFT(description, 10) AS short_description
FROM products;

-- 9️⃣ Replace 'Premium' with 'Luxury' in all product names
SELECT 
    REPLACE(name, 'Premium', 'Luxury') AS updated_name
FROM products;

-- 🔟 Concatenate the product name and category with a hyphen in between
SELECT 
    CONCAT(name, ' - ', category) AS name_with_category
FROM products;

-- 11️⃣ Round all product prices to the nearest integer
SELECT 
    name,
    price,
    ROUND(price) AS rounded_price
FROM products;

-- 12️⃣ Calculate the sale price after a 15% discount
SELECT 
    name,
    price,
    (price - (price * 0.15)) AS discounted_price
FROM products;

-- 13️⃣ Display the day of the week (name) when each product was released
SELECT 
    name,
    DAYNAME(release_date) AS release_day
FROM products;

-- 14️⃣ Find all products released in the current month (any year)
SELECT * 
FROM products
WHERE MONTH(release_date) = MONTH(CURDATE());

-- 15️⃣ Calculate how many days each product has been in inventory since its release
SELECT 
    name,
    DATEDIFF(CURDATE(), release_date) AS days_in_inventory
FROM products;

-- 16️⃣ Find the average price of all products
SELECT 
    AVG(price) AS average_price
FROM products;

-- 17️⃣ Find the total stock quantity of all products
SELECT 
    SUM(stock_quantity) AS total_stock
FROM products;

-- 18️⃣ Find the highest and lowest product ratings
SELECT 
    MAX(rating) AS highest_rating,
    MIN(rating) AS lowest_rating
FROM products;

-- 19️⃣ Count the total number of products available for sale
SELECT 
    COUNT(*) AS total_products
FROM products;

-- 20️⃣ Show average price, minimum price, maximum price, and total number of products together
SELECT 
    AVG(price) AS average_price,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    COUNT(*) AS total_products
FROM products;

-- ============================================
-- End of Exercise 2
-- ============================================
