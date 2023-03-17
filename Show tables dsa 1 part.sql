/*
SQL is case-insensitive.
But we usually use UPPERCASE for keywords
and lowercase for table names, column names etc
*/

-- USE store;

-- SHOW tables;

-- SELECT *
-- FROM customers;

-- SELECT *
-- FROM customers
-- ORDER BY first_name;

-- SELECT *
-- FROM customers
-- ORDER BY first_name DESC;

-- SELECT 1,2;

-- SELECT 1+2;
-- SELECT 100-50 / 2 AS value;
-- SELECT 100-50 / 2 AS 'answer value';

-- SELECT first_name, last_name, points
-- FROM customers;
-- SELECT first_name, last_name, points, points +10 AS 'new points'
-- FROM customers;

-- USE	exercise_hr;
-- SELECT 171*214+625
-- FROM customers;
-- USE	exercise_hr;
-- SELECT first_name AS 'First Name', last_name AS 'Last Name' FROM employees;

-- USE exercise_hr;
-- SELECT first_name AS 'First Name', last_name AS 'Last Name', salary, (salary* 15/100) AS 'PF' FROM employees;
-- USE exercise_hr;
-- SELECT distinct department_id
-- FROM employees;
-- USE store;

-- SELECT*
-- FROM products;
--  
--  SELECT name, unit_price, unit_price *1.1 AS 'new price'
--  FROM products;


USE store;

SELECT*
FROM customers;



SELECT*
FROM customers
WHERE state= 'FL';

SELECT*
FROM customers
WHERE points > 3000;

SELECT*
FROM CUSTOMERS
WHERE birth_date > '1990-01-01';

SELECT*
FROM CUSTOMERS
WHERE state != 'FL';

SELECT*
FROM customers
WHERE points > 3000 AND birth_date > '1990-01-01';

SELECT*
FROM customers
WHERE points > 3000 OR birth_date > '1990-01-01';

SELECT*
FROM customers
WHERE points > 1000 OR birth_date > '1889' AND state = 'VA';

SELECT*
FROM customers
WHERE points > 1000 AND birth_date > '1989-01-01' OR  state = 'VA';

SELECT*
FROM customers
WHERE NOT state = 'FL';

USE exercise_hr;
 SELECT first_name,last_name,hire_date
 FROM employees
 WHERE hire_date = '1987';


SELECT first_name,last_name,salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

SELECT first_name,last_name,department_id
FROM employees
WHERE department_id = 30 OR department_id = 100
ORDER BY department_id ASC;

SELECT first_name,last_name,salary
FROM employees
WHERE (salary NOT BETWEEN 10000 AND 15000) AND (department_id = 30 OR department_id = 100);

SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING','FORD');

USE store;
SELECT *
FROM customers
WHERE state IN ('FL', 'VA','GA');

USE store;
SELECT *
FROM products
WHERE quantity_in_stock IN ('49','38','72');

SELECT*
FROM products
WHERE quantity_in_stock != 72;


SELECT *
FROM customers
WHERE birth_date >= '1990-01-01' And birth_date <= '2000-01-01';

USE store;
SELECT *
FROM customers
WHERE points >= '3000' AND points <= 10000;

USE store;
SELECT *
FROM customers
WHERE address LIKE  '%TRAIL' OR address LIKE '%AVENUE';

USE store;
SELECT *
FROM customers
WHERE phone LIKE '%9';

USE store;
SELECT *
FROM customers
WHERE phone NOT LIKE '%9';

USE store;
SELECT *
FROM customers
WHERE first_name LIKE 'ELKA%' OR first_name LIKE 'AMBUR%';

SELECT *
FROM customers
WHERE last_name LIKE '%EY' OR last_name LIKE '%ON';

SELECT *
FROM customers
WHERE last_name LIKE '%MY' OR last_name LIKE '%SE';

USE exercise_hr;

SELECT *
FROM employees
WHERE first_name LIKE '%b%' AND  first_name LIKE '%c%';

SELECT*
FROM employees
WHERE last_name LIKE '______';

USE store;
SELECT*
FROM customers
WHERE last_name LIKE '%Y' AND last_name LIKE '______';

USE store;
SELECT*
FROM customers
WHERE last_name LIKE 'b%' AND last_name LIKE '%y'AND last_name LIKE '______';

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'age';

SELECT*
FROM customers
WHERE last_name REGEXP '^Mac';

SELECT*
FROM customers
WHERE last_name REGEXP 'field$';

SELECT*
FROM customers
WHERE last_name REGEXP '^Mac|field$';

SELECT*
FROM customers
WHERE last_name REGEXP '[a-h]e';



USE store;
SELECT*
FROM customers
WHERE last_name REGEXP '[gim]e';

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP '^MY|SE';

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'br|bu';

USE store;
SELECT*
FROM customers
WHERE last_name REGEXP 'b[a-z]*[RU]';

USE store;
SELECT*
FROM customers
Where phone is null;

USE store;
SELECT*
FROM customers
Where phone is not null;

USE store;
SELECT*
FROM Orders
Where shipper_id is null;

USE exercise_hr;
SELECT employee_id, first_name,department_id
FROM employees
ORDER by department_id DESC, first_name ;

-- Get top 3 customers
USE store;
SELECT *
From customers 
LIMIT 3; 

-- Get top 3 loyal customers
USE store;
SELECT *
From customers 
ORDER by points desc limit 3;

-- Limit clauses 
-- The limit clause should always come at end
-- Order is from - > optionally where -> order by -> limit

CREATE TABLE tablename (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column1 COLUMN2_DATATYPE(size) CONSTRAINTS,
)

CREATE DATABASE IF NOT EXISTS project;

USE project;

/*
CREATE TABLE tablename (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 COLUMN2_DATATYPE(size) CONSTRAINTS,
);
*/

CREATE TABLE IF NOT EXISTS user (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50),
dob DATE,
phone VARCHAR(20),
email VARCHAR(100),
first_name VARCHAR(50),
last_name VARCHAR(50)
);

DESCRIBE user;

Alter table user
add whatsapp_no int ;

-- To update whatsapp no

Alter table user
modify column co varchar(20);
describe user;

-- To delete whatsapp no
Alter table user
drop whatsapp_no;
describe user;

-- To change dob as  date_of_birth
Alter table user
rename column dob to date_of_birth;
describe user;


-- insert values

insert into user (username , password, date_of_birth, phone, email, first_name, last_name)
values('Nithi_ram','1234','2004-09-20', '9701858933', 'nithi@gmail.com', 'nithi,shri');


insert into user (username , password, date_of_birth, phone, email, first_name, last_name)
values('Nithi_am','123','2004-06-27', '9701878933', 'ni@gmail.com', 'niti,sri');
  
select*
from countries;
describe countries;

CREATE TABLE IF NOT EXISTS countries (
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40),
REGION_ID decimal(10, 0)
);

DESCRIBE countries;

alter table countries
drop country;

INSERT INTO countries (country_id,country_name,region_id)
VALUES(32,"India",8.0),(93,"America",2.0),(78,"UK",3.0),(190,"Aus",null);

select*
from countries;
describe countries;


use exercise_hr;
-- INNER JOIN
select*
from employees INNER JOIN departments
ON employees.department_id = departments.department_id;

select employee_id,first_name,last_name,e.department_id,department_name
from employees as e inner join departments as d
on e.department_id = d.department_id
where department_name = 'IT';



-- 1st question
use exercise_hr;
select first_name,last_name,e.department_id,department_name
from employees as e inner join  departments as d
on e.department_id = d.department_id; 

-- 2nd question 
use exercise_hr;
select job_title,concat(first_name,'',last_name) as employee_name

/*
Numbers : INT, BIGINT
Decimal numbers (eg. 3.14) : DOUBLE
Strings: 
		-- if fixed length: CHAR(2)
        -- if variable length: VARCHAR(255)
Date: DATE
Datetime: DATETIME
Boolean: TINYINT
/*
