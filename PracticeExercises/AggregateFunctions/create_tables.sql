-- Source: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
-- Used: MySQL and PopSQL

-- ========================================
-- ============DROP TABLES=================
-- ========================================

-- DROP ORDERS TABLE

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS costumer;

-- ========================================
-- ===========CREATE TABLES================
-- ========================================

-- CREATE ORDERS TABLE

CREATE TABLE orders (
    order_no INT PRIMARY KEY,
    purch_amt DECIMAL(8,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

DESCRIBE orders;

-- CREATE COSTUMER TABLE

CREATE TABLE costumer (
    costumer_id INT PRIMARY KEY,
    cust_name VARCHAR(20),
    city VARCHAR(20),
    grade INT,
    salesman_id INT
);

DESCRIBE costumer;