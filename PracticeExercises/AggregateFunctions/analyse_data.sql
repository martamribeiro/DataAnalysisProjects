-- Source: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
-- Used: MySQL and PopSQL

-- ========================================
-- ============ANALYSE DATA================
-- ========================================

-- 1. Write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
-- Sample Output:
-- sum
-- 17541.18

SELECT SUM(purch_amt)
FROM orders;

-- 2. Write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount. 
-- Sample Output:
-- avg
-- 1461.7650000000000000

SELECT AVG(purch_amt)
FROM orders;

-- 3. Write a SQL query that counts the number of unique salespeople. Return number of salespeople.
-- Sample Output:
-- count
-- 6

SELECT COUNT(DISTINCT salesman_id)
FROM orders;

-- 4. Write a SQL query to count the number of customers. Return number of customers.
-- Sample Output:
-- count
-- 8

SELECT COUNT(*)
FROM costumer;

-- 5. Write a SQL query to determine the number of customers who received at least one grade for their activity.
-- Sample Output:
-- count
-- 7

SELECT COUNT(ALL grade)
FROM costumer;