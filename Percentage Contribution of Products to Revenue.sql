DROP TABLE IF EXISTS products; 

CREATE TABLE products (product_id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), quantity_sold INT);

INSERT INTO products (product_id, product_name, price, quantity_sold) 
	VALUES 	(1, 'iPhone', 899.00, 600), 
			(2, 'iMac', 1299.00, 150),
			(3, 'MacBook Pro', 1499.00, 500),
			(4, 'AirPods', 499.00, 800), 
			(5, 'Accessories', 199.00, 300);  


SELECT * FROM PRODUCTS

/*
Calculate the percentage contribution of each product to total revenue, rounded to two decimal places.
*/

SELECT PRODUCT_NAME,
  		 ROUND((SUM(PRICE * QUANTITY_SOLD)/ (SELECT SUM(PRICE * QUANTITY_SOLD)FROM PRODUCTS)) * 100,2) AS TOTAL_REVENUE
FROM PRODUCTS 
GROUP BY 1


	