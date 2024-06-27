/*CONSTRAINTS:it is a restriction of datatype enter into a columns.

1)NOT NULL: it is a constraints that do not allows any null data in specific column but it allows duplicate data 

CREATE TABLE metro(id int unique not null, m_name varchar(20) unique,
fare int);

SELECT * FROM metro;
DESC metro;sale_ID

INSERT INTO metro values(1,'GREENLINE',50);
INSERT INTO metro values(3,null,40);

2)UNIQUE:it is a constraints that do not allows any duplicate data in specific column but it allows null data.

3)CHECK:it is a constraints we can give condition to a column.

CREATE TABLE movie (id int not null unique,m_name varchar(20) unique, 
fare int, check(fare >500)); 

select * from movie;
INSERT INTO movie values(1,'Yuva',600);
INSERT INTO movie values(2,'KGF',700);

PRIMARY KEY: it is also a constraint is a combination of unique and not null we use this for a table .

CREATE TABLE ipl(id int primary key, p_name varchar(20) unique, t_name varchar(20) not null,
runs int);

SELECT * FROM ipl;

desc ipl;

INSERT INTO ipl values(1,'Kohli','RCB',8000);
INSERT INTO ipl values(2,'Rohit','MI',2000);


CREATE TABLE bank(id int not null unique, b_name varchar(20) unique,
b_id int primary key);

select * from bank;

INSERT INTO bank values(1,'SBI',201),(2,'HDFC',202),(3,'ICICI',203),(4,'AXIS',204),(5,'UNION',205);//batch insert

foreign key:

CREATE TABLE cust(id int not null unique, c_name varchar(20), 
c_id int primary key, b_id int, foreign key(b_id) references bank(b_id) on delete cascade on update cascade);

select * from cust;

INSERT INTO cust values(1,'Kavya',101,201);
INSERT INTO cust values(2,'Pratibha',102,202);
INSERT INTO cust values(3,'Pruthvi',103,202);


SELECT * FROM bank;
select * from cust;
update bank set b_id = 210 where id = 1;

delete from bank where id = 2;

drop table bank;
drop table cust;



TASk:
create 5 tables(each table 5 column 
apply not null unique constraint to 2 columns, 1 primary key, 1 duplicate values)

INSERT 10 data for each table.

TAB1 : 1 COL PK
TAB2 : 1 PK, 1 FK REFERE TO TAB1(PK)
TAB3 : 1 PK, 1 FK REFERE TO TAB2(PK)
TAB4 : 1 PK, 1 FK REFERE TO TAB3(PK).



CREATE TABLE Attendance(id int auto_increment primary key, 
s_name varchar(20), a_date timestamp);

SELECT * FROM Attendance;

INSERT INTO Attendance(s_name, a_date) values('ABC', now());
INSERT INTO Attendance(s_name, a_date) values('CDE', now());

INSERT INTO Attendance values(6,'def',now());



-----joins----
SELECT * FROM college;
group by:is a clause  apply for aggregative functions only 

SELECT c_loc,count(c_loc) FROM college group by c_loc;

SELECT * FROM library;

SELECT * FROM jewellery_shop;

SELECT jewel_material,SUM(jewel_price) from jewellery_shop group by jewel_material;

SELECT jewel_material,(jewel_price) from jewellery_shop group by jewel_material;

SELECT jewel_material,MAX(jewel_price) as price from jewellery_shop group by jewel_material;

HAVING:

SELECT jewel_material,avg(jewel_price) as price from jewellery_shop where 
location = 'BTM'
group by jewel_material having price > 400000;

SELECT * FROM jewellery_shop;










100 students

id  s-name  gender  marks branch


SELECT SUM(marks) from student group by gender;

SELECT count(s_name) from student where branch = 'CS'
group by college_name having count>300;




joins:Combine the multiple tables based on join condition.
1)Inner join:

SELECT * FROM college;
select * from student;
select * from branch;
SELECT * FROM library;

SELECT * from college c INNER JOIN student s
 ON c.c_code = s.c_code inner join branch b on b.s_id = s.s_id 
 inner join library l on l.b_code = b.b_code;


create table a(id int, a_name varchar(20));
create table b(id int, b_name varchar(20));
create table c(id int, c_name varchar(20));

INSERT INTO a values(1,'ABC'),(2,'CDE'),(3,'DEF'),(4,'EFG'),(5,'RES');
INSERT INTO b values(1,'HJK'),(8,'CDE'),(3,'GKL'),(4,'EFG'),(9,'RES');
INSERT INTO c values(1,'IJK'),(4,'mno'),(3,'uio'),(5,'EFG'),(10,'RES');

SELECT * FROM a;
SELECT * FROM b;
select * from c;

SELECT * FROM a INNER JOIN b on a.a_name = b.b_name INNER JOIN c on c.c_name=b.b_name;


Inner join:

SELECT taba.id,taba.a_name,tabb.id,tabb.b_name FROM a as taba INNER JOIN b as tabb on 
taba.a_name = tabb.b_name

LEFT JOIN: will return all rows from left table and matching records from right table

SELECT * FROM a LEFT JOIN b on a.id = b.id;


A   B 
1   1
2   6
3   3
4   7 
5   5





*/
/*inner join =it takes common values/data present in both the tables*/
select e_name,count(e_name),max(salary) from employee group by e_name ;
select  department,count(department) from employee group by department;
select e_position ,count(e_position ) from employee group by e_position having count > 2;



    
    
    
  distinct=return  unique value only
  
  CREATE TABLE Attendance(id int auto_increment primary key, 
s_name varchar(20), a_date timestamp);

SELECT * FROM Attendance;

INSERT INTO Attendance(s_name, a_date) values('ABC', now());
INSERT INTO Attendance(s_name, a_date) values('ABC', now());
INSERT INTO Attendance(id,s_name, a_date) values(3,'ABC', now());
INSERT INTO Attendance(id,s_name, a_date) values(5,'ABC', now());
INSERT INTO Attendance(s_name, a_date) values('ABC', now());

CREATE database constraint_database;
use constraint_database;
select * from employee;

CREATE table user_info(id int  not null unique,username varchar(20),email varchar(20),gender varchar(6),
hobbies varchar(30),stateID int primary key);

select * from user_info;
INSERT into user_info values(1,"abhi","abhi@gmail.com","male","cricket",101);
INSERT into user_info values(3,"jyothi","jyothi@gmail.com","female","tennis,voolyboll",102);
INSERT into user_info values(4,"raju","raju@gmail.com","male","tennis,voolyboll",103);
INSERT into user_info values(5,"ramu","ramu@gmail.com","male","tennis,voolyboll",104);
INSERT into user_info values(7,"surendra","surendra@gmail.com","male","voolyboll",105);
INSERT into user_info values(8,"nanjundappa","nanju@gmail.com","male","dance",106);
INSERT into user_info values(9,"geetha","geetha@gmail.com","female","tennis",107);
INSERT into user_info values(10,"ramya","ramya@gmail.com","female","tennis",108);




CREATE table state_info (stateID int ,foreign key(stateID) references user_info(stateId) on delete cascade on update cascade
,statename varchar(30),statecode int);

ALTER table state_info modify column statecode varchar(20);


desc state_info;


select * from state_info;
desc state_info;
INSERT into state_info values(101,"karnataka","KA");
INSERT into state_info values(101,"Andrapradesh","AP");
INSERT into state_info values(102,"MAHARASTRA","MR");
INSERT into state_info values(102,"DELHI","D");
INSERT into state_info values(103,"KERALA","K");
INSERT into state_info values(104,"TAMILNADU","TN");
INSERT into state_info values(105,"GUJURATH","G");
INSERT into state_info values(105,"JAMMUANDKASHMIR","J&K");
INSERT into state_info values(106,"uttarpradesh","UP");
INSERT into state_info values(106,"uttarpradesh","UP");
INSERT into state_info values(null,"uttarpradesh","UP");


/*inner join=it prints duplicate + common records*/
SELECT u.username,u.gender,s.statename ,u.stateid,s.stateid from user_info u inner join state_info s on u.stateID=s.stateID;

SELECT u.username,u.gender,s.statename ,u.stateid,s.stateid from user_info u left join state_info s on u.stateID=s.stateID;

SELECT u.username,u.gender,s.statename ,u.stateid,s.stateid from user_info u right join state_info s on u.stateID=s.stateID;


CREATE table staff(staffid int primary key,f_name varchar(20),last_name varchar(20),address varchar(20));
CREATE table payment(p_id int primary key,staffid int ,foreign key(staffid) references staff(staffid) ,amount int,p_date timestamp);
CREATE table customer(c_id int primary key,p_id int, foreign key(p_id) references payment(p_id) ,f_name varchar(20),last_name varchar(20),address varchar(20));

INSERT into staff values(1,"raj","M","bengaluru");
INSERT into staff values(2,"manju","a","hebbala");
INSERT into staff values(3,"ram","n","krpuram");
INSERT into staff values(4,"kusuma","k","delhi");
INSERT into staff values(5,"harish","l","chenai");
INSERT into staff values(6,"barath","s","hyderabad");

INSERT into payment values(11,1,20000,now());
INSERT into payment values(12,1,10000,now());
INSERT into payment values(13,2,25000,now());
INSERT into payment values(14,3,29000,now());
INSERT into payment values(15,4,40000,now());
INSERT into payment values(16,5,10000,now());

INSERT INTO customer values(21,11,"giri","k","bengaluru");
INSERT INTO customer values(22,12,"raghu","k","jpnagar");
INSERT INTO customer values(23,13,"raaji","l","silkboard");
INSERT INTO customer values(24,14,"akshita","k","bellanduru");
INSERT INTO customer values(25,15,"afshan","f","bengaluru");
INSERT INTO customer values(26,15,"ambuja","d","delphi");
INSERT INTO customer values(27,14,"rahul","a","avani");
INSERT INTO customer values(28,11,"rose","m","electronic_city");

select * from staff;
select * from payment;
select * from customer;

CREATE table staff(staffid int primary key,f_name varchar(20),last_name varchar(20),address varchar(20));
CREATE table payment(p_id int primary key,staffid int ,foreign key(staffid) references staff(staffid) ,amount int,p_date timestamp);
CREATE table customer(c_id int primary key,p_id int, foreign key(p_id) references payment(p_id) ,f_name varchar(20),last_name varchar(20),address varchar(20));

SELECT  s.staffid, S.f_name,p.staffid,p.amount,c.p_id,c.address from staff s join payment p on s.staffid=p.staffid inner join customer c on c.p_id=p.p_id;

---UNION : no_of columns are same---
CREATE table staff1(staffid int primary key,f_name varchar(20),last_name varchar(20),address varchar(20));
INSERT into staff1 values(1,"raj","M","bengaluru");
INSERT into staff1 values(2,"manju","a","hebbala");
INSERT into staff1 values(3,"ram","n","krpuram");
INSERT into staff1 values(4,"kusuma","k","delhi");
INSERT into staff1 values(5,"harish","l","chenai");
INSERT into staff1 values(6,"barath","s","hyderabad");

CREATE table customer1(customer_id int primary key,f_name varchar(20),last_name varchar(20),address varchar(20));
INSERT INTO customer1 values(1,"giri","k","bengaluru");
INSERT INTO customer1 values(2,"raghu","k","jpnagar");
INSERT INTO customer1 values(3,"raaji","l","silkboard");
INSERT INTO customer1 values(7,"akshita","k","bellanduru");
INSERT INTO customer1 values(8,"afshan","f","bengaluru");
INSERT INTO customer1 values(9,"ambuja","d","delphi");
INSERT INTO customer1 values(10,"rahul","a","avani");
INSERT INTO customer1 values(11,"rose","m","electronic_city");


select * from staff1;
select * from customer1;

SELECT * from staff1 
 union all
select * from customer1;

select distinct * from customer1;


    