SELECT user_id, COUNT(*) FROM products GROUP BY user_id ORDER BY COUNT(*) DESC LIMIT 1;


