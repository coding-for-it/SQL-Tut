-- Step 1: Create the customers table
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

-- Step 2: Create the orders table with a foreign key
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Step 3: Insert sample data into customers
INSERT INTO customer (name, city) VALUES
  ('Isha', 'Mumbai'),
  ('Aditi', 'Delhi'),
  ('Janhavi', 'Bangalore');

-- Step 4: Insert sample data into orders
INSERT INTO orders (customer_id, product, amount) VALUES
  (1, 'Smartphone', 20000),
  (1, 'Shoes', 5000),
  (2, 'Laptop', 55000);

-- Step 5: INNER JOIN - shows matching records only
SELECT customer.name, orders.product, orders.amount
FROM customer
INNER JOIN orders ON customer.customer_id = orders.customer_id;

-- Step 6: LEFT JOIN - shows all customers, even if no orders
SELECT customer.name, orders.product, orders.amount
FROM customer
LEFT JOIN orders ON customer.customer_id = orders.customer_id;

-- Step 7: RIGHT JOIN - shows all orders, even if customer not found
-- (This is just for syntax practice; all orders have matching customers in this data)
SELECT customer.name, orders.product, orders.amount
FROM customer
RIGHT JOIN orders ON customer.customer_id = orders.customer_id;

-- Step 8: FULL OUTER JOIN - shows all customers and orders, including unmatched
SELECT customer.name, orders.product, orders.amount
FROM customer
FULL OUTER JOIN orders ON customer.customer_id = orders.customer_id;
