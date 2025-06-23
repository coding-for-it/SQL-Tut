-- Create the employees table
CREATE TABLE employee (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    bonus INT,
    joining_date DATE
);

-- Insert data
INSERT INTO employee (name, department, salary, city, bonus, joining_date)
VALUES
  ('Siddharth', 'Malhotra', 95000, 'Mumbai', 10000, '2021-02-15'),
  ('Kiara', 'Advani', 88000, 'Mumbai', 9000, '2020-07-10'),
  ('Deepika Padukone', 'HR', 78000, 'Bangalore', 8000, '2022-04-01'),
  ('Ranveer Singh', 'IT', 87000, 'Delhi', NULL, '2023-01-12'),
  ('Alia Bhatt', 'Finance', 76000, 'Kolkata', 7000, '2023-11-05'),
  ('Ranbir Kapoor', 'IT', 85000, 'Mumbai', 9500, '2024-03-15'),
  ('Katrina Kaif', 'Sales', 78000, 'Delhi', 8500, '2022-08-20'),
  ('Vicky Kaushal', 'HR', 72000, 'Delhi', 5000, '2021-09-12');

-- 1. SELECT all employees
SELECT * FROM employee;

-- 2. SELECT specific columns
SELECT name, department, salary FROM employee;

-- 3. WHERE clause: salary > 80000
SELECT name, salary FROM employee WHERE salary > 80000;

-- 4. WHERE with AND
SELECT name FROM employee
WHERE department = 'IT' AND city = 'Mumbai';

-- 5. WHERE with OR
SELECT name FROM employee
WHERE city = 'Delhi' OR city = 'Mumbai';

-- 6. WHERE with NOT
SELECT name FROM employee 
WHERE NOT department = 'HR';

-- 7. DISTINCT city values
SELECT DISTINCT city FROM employee;

-- 8. LIKE clause
SELECT name FROM employee 
WHERE name LIKE 'R%';  -- Names starting with R

-- 9. IN clause
SELECT name FROM employee
WHERE city IN ('Delhi', 'Mumbai');

-- 10. BETWEEN clause
SELECT name, salary FROM employee
WHERE salary BETWEEN 80000 AND 90000;

-- 11. IS NULL check (for bonus)
SELECT name FROM employee 
WHERE bonus IS NULL;

--  12. AS alias for readability
SELECT name AS "Employee Name", department AS "Dept", salary AS "Monthly Salary"
FROM employee;

-- 13. ORDER BY salary descending
SELECT name, salary FROM employee
ORDER BY salary DESC;

-- 14. GROUP BY department with COUNT
SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department;

-- 15. GROUP BY with HAVING (only depts with avg salary > 80000)
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 80000;
