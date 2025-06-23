-- Existing table and data
/*CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO users (name, email)
VALUES
  ('Ritika Sharma', 'ritika@gmail.com'),
  ('Aman Joshi', 'aman@gmail.com'),
  ('Sanya Mehra', 'sanya@gmail.com'),
  ('Kabir Das', 'kabir@gmail.com'),
  ('Neha Kapoor', 'neha@gmail.com');*/

-- 1. Start a transaction
BEGIN;

-- 2.Make changes inside the transaction
UPDATE users
SET email = 'kabir.new@gmail.com'
WHERE name = 'Kabir Das';

-- 3. ROLLBACK to undo the change
ROLLBACK;

-- Check data (Kabir's email should be unchanged)
SELECT * FROM users;

-- 4. Try again, this time COMMIT
BEGIN;

UPDATE users
SET email = 'kabir.official@gmail.com'
WHERE name = 'Kabir Das';

-- Commit to save permanently
COMMIT;

-- Final check
-- SELECT * FROM users;
SELECT email FROM users WHERE name='Kabir Das';