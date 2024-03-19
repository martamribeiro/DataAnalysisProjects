-- Source: https://www.w3resource.com/sql-exercises
-- Used: MySQL and PopSQL

-- ==============================================================================
-- =============================AGGREGATE FUNCTIONS==============================
-- ==============================================================================
-- Source: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
-- ==============================================================================

INSERT INTO orders
VALUES
('70001','150.5','2012-10-05','3005','5002'),
('70009','270.65','2012-09-10','3001','5005'),
('70002','65.26','2012-10-05','3002','5001'),
('70004','110.5','2012-08-17','3009','5003'),
('70007','948.5','2012-09-10','3005','5002'),
('70005','2400.6','2012-07-27','3007','5001'),
('70008','5760','2012-09-10','3002','5001'),
('70010','1983.43','2012-10-10','3004','5006'),
('70003','2480.4','2012-10-10','3009','5003'),
('70012','250.45','2012-06-27','3008','5002'),
('70011','75.29','2012-08-17','3003','5007'),
('70013','3045.6','2012-04-25','3002','5001');

SELECT * FROM orders;

INSERT INTO customer
VALUES
('3002','Nick Rimando','New York','100','5001'),
('3007','Brad Davis','New York','200','5001'),
('3005','Graham Zusi','California','200','5002'),
('3008','Julian Green','London','300','5002'),
('3004','Fabian Johnson','Paris','300','5006'),
('3009','Geoff Cameron','Berlin','100','5003'),
('3003','Jozy Altidor','Moscow','200','5007'),
('3001','Brad Guzan','London',NULL,'5005');

SELECT * FROM customer;

INSERT INTO emp_details
VALUES
('127323','Michale','Robbin','57'),
('526689','Carlos','Snares','63'),
('843795','Enric','Dosio','57'),
('328717','Jhon','Snares','63'),
('444527','Joseph','Dosni','47'),
('659831','Zanifer','Emily','47'),
('847674','Kuleswar','Sitaraman','57'),
('748681','Henrey','Gabriel','47'),
('555935','Alex','Manuel','57'),
('539569','George','Mardy','27'),
('733843','Mario','Saule','63'),
('631548','Alan','Snappy','27'),
('839139','Maria','Foster','57');

SELECT * FROM emp_details;

-- ==================================================================================
-- ==================================MOVIE DATABASE==================================
-- ==================================================================================
-- Source: https://www.w3resource.com/sql-exercises/movie-database-exercise/index.php
-- ==================================================================================

INSERT INTO actor
VALUES 
(101,'James','Stewart','M'),
(102,'Deborah','Kerr','F'),
(103,'Peter','OToole','M'),
(104,'Robert','DeNiro','M'),
(106,'Harrison','Ford','M'),
(108,'Stephen','Baldwin','M'),
(109,'Jack','Nicholson','M'),
(110,'Mark','Wahlberg','M'),
(111,'Woody','Allen','M'),
(112,'Claire','Danes','F'),
(113,'Tim','Robbins','M'),
(114,'Kevin','Spacey','M'),
(115,'Kate','Winslet','F'),
(116,'Robin','Williams','M'),
(117,'Jon','Voight','M'),
(118,'Ewan','McGregor','M'),
(119,'Christian','Bale','M'),
(120,'Maggie','Gyllenhaal','F'),
(121,'Dev','Patel','M'),
(122,'Sigourney','Weaver','F'),
(123,'David','Aston','M'),
(124,'Ali','Astin','F');

SELECT * FROM actor;

INSERT INTO genres
VALUES
(1001,'Action'),
(1002,'Adventure'),
(1003,'Animation'),
(1004,'Biography'),
(1005,'Comedy'),
(1006,'Crime'),
(1007,'Drama'),
(1008,'Horror'),
(1009,'Music'),
(1010,'Mystery'),
(1011,'Romance'),
(1012,'Thriller'),
(1013,'War');

SELECT * FROM genres;

INSERT INTO director
VALUES
(201,'Alfred','Hitchcock'),
(202,'Jack','Clayton'),
(203,'David','Lean'),
(204,'Michael','Cimino'),
(205,'Milos','Forman'),
(206,'Ridley','Scott'),
(207,'Stanley','Kubrick'),
(208,'Bryan','Singer'),
(209,'Roman','Polanski'),
(210,'Paul','Thomas Anderson'),
(211,'Woody','Allen'),
(212,'Hayao','Miyazaki'),
(213,'Frank','Darabont'),
(214,'Sam','Mendes'),
(215,'James','Cameron'),
(216,'Gus','Van Sant'),
(217,'John','Boorman'),
(218,'Danny','Boyle'),
(219,'Christopher','Nolan'),
(220,'Richard','Kelly'),
(221,'Kevin','Spacey'),
(222,'Andrei','Tarkovsky'),
(223,'Peter','Jackson');

SELECT * FROM director;

SELECT * FROM movie;

SELECT * FROM movie_genres;

SELECT * FROM movie_direction;

SELECT * FROM reviewer;

SELECT * FROM rating;

SELECT * FROM movie_cast;