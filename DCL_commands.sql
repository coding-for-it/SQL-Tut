-- 1.Create table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- 2.Insert data
INSERT INTO users (name, email)
VALUES
  ('Ritika Sharma', 'ritika@gmail.com'),
  ('Aman Joshi', 'aman@gmail.com'),
  ('Sanya Mehra', 'sanya@gmail.com'),
  ('Kabir Das', 'kabir@gmail.com'),
  ('Neha Kapoor', 'neha@gmail.com');

SELECT * FROM users;
-- 3.Create a new PostgreSQL role/user (run as a superuser)
CREATE ROLE analyst WITH LOGIN PASSWORD 'sql123';

-- 4. Grant SELECT permission on users table to analyst
GRANT SELECT ON users TO analyst;

-- 5.Revoke SELECT permission from analyst
REVOKE SELECT ON users FROM analyst;
