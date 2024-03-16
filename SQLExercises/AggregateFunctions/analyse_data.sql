-- Source: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
-- Used: MySQL and PopSQL

-- ========================================
-- ============ANALYSE DATA================
-- ========================================

-- 1. Write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
-- Sample Output:
-- sum
-- 17541.18

SELECT SUM(purch_amt) AS sum
FROM orders;

-- 2. Write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount. 
-- Sample Output:
-- avg
-- 1461.7650000000000000

SELECT AVG(purch_amt) AS avg
FROM orders;

-- 3. Write a SQL query that counts the number of unique salespeople. Return number of salespeople.
-- Sample Output:
-- count
-- 6

SELECT COUNT(DISTINCT salesman_id) AS count
FROM orders;

-- 4. Write a SQL query to count the number of customers. Return number of customers.
-- Sample Output:
-- count
-- 8

SELECT COUNT(*) AS count
FROM customer;

-- 5. Write a SQL query to determine the number of customers who received at least one grade for their activity.
-- Sample Output:
-- count
-- 7

SELECT COUNT(ALL grade) AS count
FROM customer;

-- 6. Write a SQL query to find the maximum purchase amount.
-- Sample Output:
-- max
-- 5760.00

SELECT MAX(purch_amt) AS max
FROM orders;

-- 7. Write a SQL query to find the minimum purchase amount.
-- Sample Output:
-- min
-- 65.26

SELECT MIN(purch_amt) AS min
FROM orders;

-- 8. Write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade.
-- Sample Output:
-- city		    max
-- London		300
-- Paris		300
-- New York	    200
-- California	200
-- Berlin		100
-- Moscow		200

SELECT city, MAX(grade) AS max
FROM customer
GROUP BY city;

-- 9. Write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount. 
-- Sample Output:
-- customer_id	  max
-- 3007	 	      2400.60
-- 3008		      250.45
-- 3002		      5760.00
-- 3001		      270.65
-- 3009		      2480.40
-- 3004		      1983.43
-- 3003		      75.29
-- 3005		      948.50

SELECT customer_id, MAX(purch_amt) AS max
FROM orders
GROUP BY customer_id;

-- 10. Write  a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return, order date and highest purchase amount.
-- Sample Output:
-- customer_id	ord_date	max
-- 3002		2012-10-05	65.26
-- 3003		2012-08-17	75.29
-- 3005		2012-10-05	150.50
-- 3007		2012-07-27	2400.60
-- 3009		2012-08-17	110.50
-- 3001		2012-09-10	270.65
-- 3002		2012-09-10	5760.00
-- 3005		2012-09-10	948.50
-- 3009		2012-10-10	2480.40
-- 3008		2012-06-27	250.45
-- 3004		2012-10-10	1983.43
-- 3002		2012-04-25	3045.60

SELECT customer_id, ord_date, MAX(purch_amt) AS max
FROM orders
GROUP BY customer_id, ord_date;