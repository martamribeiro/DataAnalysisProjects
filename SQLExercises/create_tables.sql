-- Source: https://www.w3resource.com/sql-exercises
-- Used: MySQL and PopSQL

-- ==============================================================================
-- =============================AGGREGATE FUNCTIONS==============================
-- ==============================================================================
-- Source: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
-- ==============================================================================

-- DROP TABLES

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS emp_details;

-- CREATE TABLES

CREATE TABLE orders (
    order_no INT PRIMARY KEY,
    purch_amt DECIMAL(8,2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);

DESCRIBE orders;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(20),
    city VARCHAR(20),
    grade INT,
    salesman_id INT
);

DESCRIBE customer;

CREATE TABLE emp_details (
    emp_idno INT,
    emp_fname VARCHAR(20),
    emp_lname VARCHAR(20),
    emp_dept INT,
    PRIMARY KEY(emp_idno)
);

DESCRIBE emp_details;

-- ==================================================================================
-- ==================================MOVIE DATABASE==================================
-- ==================================================================================
-- Source: https://www.w3resource.com/sql-exercises/movie-database-exercise/index.php
-- ==================================================================================

-- DROP TABLES

DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS movie_genres;
DROP TABLE IF EXISTS movie_direction;
DROP TABLE IF EXISTS reviewer;
DROP TABLE IF EXISTS rating;
DROP TABLE IF EXISTS movie_cast;

-- CREATE TABLES

CREATE TABLE actor(
    act_id INT,
    act_fname VARCHAR(20),
    act_lname VARCHAR(20),
    act_gender VARCHAR(1),
    PRIMARY KEY(act_id)
);

DESCRIBE actor;

CREATE TABLE genres(
    gen_id INT,
    gen_title VARCHAR(20),
    PRIMARY KEY(gen_id)
);

DESCRIBE genres;

CREATE TABLE director(
    dir_id INT,
    dir_fname VARCHAR(20),
    dir_lname VARCHAR(20),
    PRIMARY KEY(dir_id)
);

DESCRIBE director;

CREATE TABLE movie (
    mov_id INT PRIMARY KEY,
    mov_title VARCHAR(50),
    mov_year INT,
    mov_time INT,
    mov_lang VARCHAR(50),
    mov_dt_rel DATE,
    mov_rel_country VARCHAR(5)
);

DESCRIBE movie;

--missing attributes
CREATE TABLE movie_genres(
    mov_id INT,
    gen_id INT,
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id),
    FOREIGN KEY(gen_id) REFERENCES genres(gen_id)
);

DESCRIBE movie_genres;

CREATE TABLE movie_direction(
    dir_id INT,
    mov_id INT,
    FOREIGN KEY(dir_id) REFERENCES director(dir_id),
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);

DESCRIBE movie_direction;

CREATE TABLE reviewer(
    rev_id INT PRIMARY KEY,
    rev_name VARCHAR(30)
);

DESCRIBE reviewer;

CREATE TABLE rating(
    mov_id INT,
    rev_id INT,
    rev_stars INT,
    num_o_rating INT,
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id), 
    FOREIGN KEY(rev_id) REFERENCES reviewer(rev_id)
);

DESCRIBE rating;

CREATE TABLE movie_cast(
    act_id INT,
    mov_id INT,
    role VARCHAR(30),
    FOREIGN KEY(act_id) REFERENCES actor(act_id),
    FOREIGN KEY(mov_id) REFERENCES movie(mov_id)
);

DESCRIBE movie_cast;