select * from juice;

SELECT * FROM juice where id = 100 or flavour in('mint');

SELECT * FROM juice where  id = 1 and flavour in ('Mint');
SELECT * FROM buisket;

LIKE: Pattern Matching:
 %:
 SELECT * FROM buisket where flavor LIKE 'p%'; 
  SELECT * FROM buisket where flavor LIKE 'p%z%a';
  
  char: LIKE, UPPER,LOWER,CONCAT,INSTR,SUBSTR,LENGTH
  
  UPPER:
  SELECT UPPER(brand_name) from juice;
  LOWER:
  SELECT LOWER(brand_name) from juice;
  SELECT * FROM JUICE;
  
  SELECT CONCAT(brand_name,flavour,price) from juice;
  
  'XWORKZ' 'ODC'
  
  SELECT CONCAT('XWORKZ','ODC');

  ALIAS:
  SELECT CONCAT(brand_name,flavour,price) as combine from juice;
  
  SELECT UPPER(brand_name) as cap from juice;
  
  SELECT j.brand_name as brand from juice as j;
  
  
LENGTH:

SELECT brand_name,LENGTH(brand_name) as length from juice;
  
SELECT * FROM juice;  
SELECT LENGTH(brand_name) from juice;
  
INSTR:

'BENGALURU'

SELECT INSTR('BENGULURU','U') as pos;
SELECT brand_name,INSTR(brand_name, 'A') as pos from juice;

SUBSTR:
			(STRING,startposition,noofcharcterstoreturn);
SELECT SUBSTR('BENGULURU', 4,4);
SELECT SUBSTR('XWORKZODC', 5,3);

SELECT brand_name,SUBSTR(brand_name, 4,3) from juice;

select * from juice;

AGGREGATE FUNCTIONS:
1)count
select count(*) from juice;
SELECT COUNT(price) as total from juice;
2)SUM:
SELECT SUM(price) as sumfrom juice where id in(2,4,5,6);
3)max:
SELECT MAX(price) as max from juice;
4)min:
SELECT MIN(PRICE) as min FROM JUICE;
5)AVG:
SELECT AVG(price)as avg from juice;

CREATE TABLE hospital(id int,h_name varchar(20), h_type enum('Private', 'Govt'), fees bigint);

SELECT * FROM hospital;
INSERT INTO hospital values(1,'Jaydeva', 'private', 2000);
INSERT INTO hospital values(2,'Manipal', 2, 6000);
INSERT INTO hospital values(3,'Apollo', 1, 6000);


select * from product where productName LIKE 'b%';
select * from product where productName LIKE '%e';
select * from product where productName LIKE 'f%d%e';

select UPPER(productName) as upper from product;
select LOWER(productName) as lower from product;

select CONCAT(productName,p_date,productid) as concat from product;

select productName ,instr(productName,'a') as position from product;/*shows the position of specific letter in selected column*/

select productName,substr(productName,3,6) as substring from product;
select substr("jyothi_n",3,5) as substring ; /*no of charecters*/

SELECT productname ,LENGTH(productname) as length from product;

select salary,COUNT(*) as count from employee;/*no of field*/
select * from employee;
select SUM(SALARY) as salary from employee;
select AVG(SALARY) as salary from employee;
select MAX(SALARY) as salary from employee;
select MIN(SALARY) as salary from employee;

