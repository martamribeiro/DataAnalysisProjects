-- Dataset: Netflix Movies and TV Shows from SHIVAM BANSAL
-- Source: https://www.kaggle.com/datasets/shivamb/netflix-shows
-- Used: MySQL and PopSQL

-- ========================================
-- ============DROP TABLES=================
-- ========================================

-- DROP CATALOG TABLE

DROP TABLE IF EXISTS netflix_catalog;

-- ========================================
-- ===========CREATE TABLES================
-- ========================================

-- CREATE CATALOG TABLE

CREATE TABLE netflix_catalog (
    show_id VARCHAR(10) PRIMARY KEY,
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added DATE,
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(10),
    listed_in TEXT,
    description TEXT
);

DESCRIBE netflix_catalog;

-- ========================================
-- =============LOAD DATA==================
-- ========================================

-- LOAD DATASET TO TABLE
-- The .CSV file was saved in the Uploads folder, that MySQL can access according to its secure-file-priv setting
-- Empty values become NULL

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.3/Uploads/netflix_titles.csv'
INTO TABLE netflix_catalog
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@show_id, @type, @title, @director, @cast, @country, @date_added, @release_year, @rating, @duration, @listed_in, @description)
SET show_id = @show_id,
    type = NULLIF(@type, ''),
    title = NULLIF(@title, ''),
    director = NULLIF(@director, ''),
    cast = NULLIF(@cast, ''),
    country = NULLIF(@country, ''),
    date_added = IF(@date_added = '', NULL, STR_TO_DATE(@date_added, '%M %e, %Y')), -- Convert date format
    release_year = NULLIF(@release_year, ''),
    rating = NULLIF(@rating, ''),
    duration = NULLIF(@duration, ''),
    listed_in = NULLIF(@listed_in, ''),
    description = NULLIF(@description, '');