CREATE database SalesTracker;
CREATE database EmployeeManagement;

CREATE database customerrelations;
DROP database customerrelations;
CREATE DATABASE customer_table;


CREATE database studentrecords;
DROP DATABASE studentrecords;
CREATE DATABASE Oder_history;

CREATE database inventorycontrol;
DROP database inventorycontrol;
CREATE database salestable;


use SalesTracker;  /* 1 */

SELECT * from product;
desc product;

CREATE table product(ProductID int, productName varchar(20),customerSalesAmount bigint);

ALTER table product ADD date date;
ALTER table product ADD category varchar(20);
ALTER table product ADD unit_price int;
ALTER table product ADD supplier varchar(20);

ALTER table product drop column salesAmount;
ALTER table product DROP column category;
select *from product;

ALTER table product RENAME column productName to PName;
ALTER table product rename column unit_price to price;

Alter table product MODIFY column price bigint;     /* change datatype*/
ALTER table product modify column date datetime;
show tables;


use salestable;  /* 2 */
CREATE table sales(sale_ID int,customer_id int,product_ID int);
ALTER table sales add quantity int;
Alter table sales add  sale_date date;
 
Alter table sales add  total_price date;
ALTER table sales modify column total_price bigint;
  
Alter table sales add  sale_date date;
ALTER table sales add  payment_method varchar(20);
ALTER table sales modify payment_method boolean;

ALTER table sales rename column total_price to price;
ALTER table sales rename column customer_id to Customer_ID;

ALTER table sales drop payment_method;
ALTER table sales drop total_price;

use customer_table; /* 3 */
create table customer(customer_ID int,first_name varchar(20),last_name varchar(20));
ALTER TABLE customer ADD email varchar(50); 
ALTER TABLE CUSTOMER RENAME COLUMN email to Email;

ALTER TABLE CUSTOMER ADD city varchar(20);
ALTER TABLE CUSTOMER ADD state varchar(20);


ALTER  table customer ADD number varchar(10);
ALTER table CUSTOMER RENAME COLUMN NUMBER TO PHONE_NUMBER;
ALTER table CUSTOMER RENAME COLUMN PHONE_NUMBER TO Phone_Number;

 ALTER TABLE  CUSTOmer MODIFY column Phone_Number int;
  ALTER TABLE  CUSTOmer MODIFY column Phone_Number bigint;
  
  ALTER TABLE CUSTOMER DROP COLUMN city ;
  ALTER TABLE CUSTOMER DROP COLUMN STATE;
  
  
 use EmployeeManagement;  /* 4 */ 
 CREATE table Employee(Employee_ID int,first_name varchar(20),last_name varchar(20));
 ALTER TABLE EMPLOYEE ADD Position varchar(20);
 ALTER TABLE EMPLOYEE ADD Department varchar(20);
 
 ALTER TABLE EMPLOYEE ADD date_of_Hire varchar(20);
 ALTER TABLE EMPLOYEE MODIFY date_of_Hire datetime;
 ALTER TABLE EMPLOYEE RENAME column  date_of_Hire TO DateOfHire ;
 
 ALTER TABLE EMPLOYEE ADD salary varchar(20);
 ALTER TABLE EMPLOYEE MODIFY SALARY INT;
 ALTER TABLE EMPLOYEE RENAME COLUMN SALARY TO Salary;
 
 ALTER TABLE EMPLOYEE DROP FIRST_NAME;
 ALTER TABLE EMPLOYEE DROP LAST_NAME;
 
 select * from employee;
 ALTER table employee drop salary;
 
 
 
 use Oder_history; /* 5 */
 CREATE TABLE Oder_Info(Oder_ID int,Customer_ID int,Oder_date date);
 ALTER TABLE Oder_Info ADD Total_Amount int8;
 
 ALTER TABLE Oder_Info ADD ShippingAddress int8;
 ALTER TABLE Oder_Info MODIFY COLUMN ShippingAddress varchar(20);
 ALTER TABLE Oder_Info RENAME COLUMN ShippingAddress TO Shipping_Address;
 
 ALTER TABLE Oder_Info ADD paymentMethod int8;
 ALTER TABLE Oder_Info MODIFY paymentMethod varchar(20);
 ALTER TABLE Oder_Info RENAME column paymentMethod TO Payment_Method;
 
 ALTER TABLE Oder_Info ADD status boolean;
 
 ALTER TABLE Oder_Info DROP COLUMN CUSTOMER_ID;
 ALTER TABLE Oder_Info DROP STATUS;
 
 SELECT * from Oder_Info;
DESC Oder_Info;

