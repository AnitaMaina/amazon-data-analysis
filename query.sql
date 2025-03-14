SELECT product_name, rating_count 
FROM products 
ORDER BY rating_count DESC 
LIMIT 10;

SELECT product_name, actual_price, discounted_price, discount_percentage 
FROM products 
WHERE discount_percentage > 50 
ORDER BY discount_percentage DESC;

SELECT main_category, AVG(rating_count) AS avg_rating 
FROM products 
GROUP BY main_category 
ORDER BY avg_rating DESC 
LIMIT 1;

CREATE TABLE IF NOT EXISTS products (
    product_id VARCHAR(255) PRIMARY KEY,
    product_name TEXT,
    category VARCHAR(255),
    discounted_price DECIMAL(10, 2),
    actual_price DECIMAL(10, 2),
    discount_percentage DECIMAL(5, 2),
    rating FLOAT,
    rating_count INT,
    about_product TEXT,
    user_id VARCHAR(255),
    user_rating VARCHAR(10),
    review_heading TEXT,
    
    review_text TEXT,
    review_timestamp DATETIME,
    discount_amount DECIMAL(10, 2),
    review_year INT
);
