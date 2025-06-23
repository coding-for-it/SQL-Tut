CREATE TABLE employees(id INT PRIMARY KEY,name VARCHAR(50),salary DECIMAL(10,2));

ALTER TABLE employees ADD COLUMN email VARCHAR(100);

ALTER TABLE employees
RENAME COLUMN email TO email_id;

DROP table employees;

-- Re-create the employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    email_id VARCHAR(100)
);

-- Create an index on email_id
CREATE INDEX idx_email ON employees(email_id);

SELECT * FROM employees;
-- Drop the index
DROP INDEX idx_email;  

-- Add a constraint (example: salary must be greater than 0)
ALTER TABLE employees
ADD CONSTRAINT chk_salary_positive CHECK (salary > 0);

-- Drop the constraint
ALTER TABLE employees
DROP CONSTRAINT chk_salary_positive;  

--Truncate the table (delete all rows, reset identity/auto-increment)
TRUNCATE TABLE employees;

