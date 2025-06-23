-- Create a customers table
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    signup_date DATE DEFAULT CURRENT_DATE
);

-- INSERT query
INSERT INTO customers (first_name, last_name, email, phone, city)
VALUES
  ('Anushka', 'Sharma', 'anushka@gmail.com', '9876543210', 'Mumbai'),
  ('Virat', 'Kohli', 'virat@gmail.com', '9988776655', 'Delhi'),
  ('Siddharth', 'Malhotra', 'sid@gmail.com', '9877564871', 'Bangalore'),
  ('Kiara', 'Advani', 'kiara@gmail.com', '9123456780', 'Chennai');

-- SELECT QUERY
SELECT * FROM customers;

-- UPDATE query
UPDATE customers
SET city = 'Hyderabad'
WHERE first_name = 'Kiara' AND last_name = 'Advani';

-- DELETE query
DELETE FROM customers
WHERE first_name = 'Virat' AND last_name = 'Kohli';
