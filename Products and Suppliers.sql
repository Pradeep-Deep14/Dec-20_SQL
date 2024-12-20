CREATE TABLE suppliers (
         supplier_id INT PRIMARY KEY, 
         supplier_name VARCHAR(100)
     );
     CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         supplier_id INT
     );
     INSERT INTO suppliers VALUES 
         (1, 'Supplier A'), 
         (2, 'Supplier B');
     INSERT INTO products VALUES 
         (1, 'Smartphone', 1), 
         (2, 'Laptop', 2);


/*
List all products with their corresponding supplier names.
*/

SELECT * FROM PRODUCTS
SELECT * FROM SUPPLIERS


SELECT P.PRODUCT_NAME,
       S.SUPPLIER_NAME
FROM PRODUCTS P
JOIN SUPPLIERS S
ON P.SUPPLIER_ID = S.SUPPLIER_ID