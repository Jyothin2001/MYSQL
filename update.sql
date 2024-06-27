/*
These SQL commands are mainly categorized into five categories: 

DDL – Data Definition Language
DQL – Data Query Language
DML – Data Manipulation Language
DCL – Data Control Language
TCL – Transaction Control Language

DDL:
-DDL is used to create and modify the structure of database objects(db,table,columns..) in the database. 
-DDL is a set of SQL commands used to create, modify, and delete database structures but not data.
 These commands are normally not used by a general user, who should be accessing the database via an application.

List of DDL commands: 

CREATE:    This command is used to create the database or its objects (like table, index, function, views, store procedure, and triggers).
DROP:      This command is used to delete objects from the database.
ALTER:     This is used to alter the structure of the database.
TRUNCATE:  This is used to remove all records from a table, including all spaces allocated for the records are removed.
COMMENT:   This is used to add comments to the data dictionary.
RENAME:    This is used to rename an object existing in the database.


DML(Data Manipulation Language):
-The SQL commands that deal with the manipulation of data present in the database belong to DML 


List of DML commands: 

INSERT:   It is used to insert data into a table.
UPDATE:   It is used to update existing data within a table.
DELETE:   It is used to delete records from a database table.
LOCK:     Table control concurrency.
CALL:      Call a PL/SQL or JAVA subprogram.
EXPLAIN PLAN: It describes the access path to data.








TRUNCATE:
DML:Data Manipulation language.
SELECT: 
FROM: CLAUSE
SELECT * FROM table_name;

SELECT * FROM product;

SELECT *  from product;

2)INSERT 

DESC gadgets_info;
select * from gadgets_info;
INSERT INTO table_name values(data1,data2,data3,.....);
ALTER TABLE gadgets_info rename column brand to price;

/insert into all column/
INSERT INTO gadgets_info values(1, 'Laptop', 'BTM', 35000);
INSERT INTO gadgets_info values(2, 'TV', 'RRNagar', 25000);
INSERT INTO gadgets_info values(3, 'Fan', 'JPNagar', 6000);
INSERT INTO gadgets_info values(4, 'Mobile', 'JayNagar', 60000);
INSERT INTO gadgets_info values(5, 'tab', 'Silkboard', 65000);
INSERT INTO gadgets_info values(6, 'Fridge', 'Kormangala', 65000);

/inert into specific column/
INSERT INTO gadgets_info(id, location) values (5, 'jaynagar');

ALTER TABLE gadgets_info MODIFY COLUMN price varchar(20);

ALTER TABLE gadgets_info MODIFY COLUMN location bigint;


TRUNCATE: 

TRUNCATE TABLE gadgets_info;

where:
SELECT * FROM gadgets_info where gadgets_name = 'Laptop';
SELECT * FROM gadgets_info where id = 4;
SELECT * FROM gadgets_info where price = 25000;
SELECT * FROM gadgets_info where price = 65000;






SELECT * FROM table_name;

OR:
COND1   COND2   RES
TRUE    FALSE   TRUE
FALSE   TRUE    TRUE
TRUE    TRUE    TRUE
FALSE   FASLE   FALSE

SELECT * FROM equipments where name = 'gheet' or
liquid_no = 7808;

update equipments set name = 'ABC' where price = 9087
or liquid_no = 780;

select * from equipments where price = 9087
or liquid_no = 780;

DELETE FROM equipments where price = 5674
or liquid_no = 7805;


select * FROM equipments where price = 5674
or liquid_no = 7805;

IN:

SELECT * FROM equipments where price = 9087
or liquid_no = 7808 or id = 5 or id = 1;

SELECT * FROM equipments where id = 5 or id = 13
or id = 20 or id = 2;

IN:

SELECT * FROM equipments where id IN(5,13,20,2);
NOT IN:
SELECT id,liquid_no FROM equipments where id NOT IN(5,13,20,2);

between:
SELECT * FROM equipments where id between 4 and 12;
SELECT * FROM equipments where name between 'S' and 'W';

not between:
SELECT * FROM equipments where id not between 4 and 12;

ORDER BY:
SELECT * FROM equipments order by id;
SELECT * FROM equipments order by id desc;


SELECT DISTINCT FROM WHERE GROUP BY HAVING ORDER BY;

DISTINCT:
SELECT DISTINCT(name) from equipments;


CREATE TABLE hospital(id int, h_name varchar(30),
loc varchar(20), is_private boolean, fees decimal(5,2));

INSERT INTO hospital values(1,'Jaydeva', 'BTM', true, 200.50),
(2,'Manipal','Jaynagar',false,300.50),(3,'Fortis', 'BngRoad', true, 600.50);

INSERT INTO hospital values(4,'cloudnine', 'Bng', true, 200.50);

SELECT * FROM hospital;

CREATE TABLE hospital_dup as select * from hospital;

SELECT * FROM hospital_dup;
delete from hospital_dup;*/




/*update: 
UPDATE table_name SET COLUMN_NAME = data;
select * from gadgets_info;

for Updating:
1) Go to edit under Preferences 
2) Select SQL Editor and Disable the safe updates option.

UPDATE:
UPDATE table_name set column_name = data where condition;
UPDATE gadgets_info set gadgets_name = 'Desktop' where id = 6;

UPDATE gadgets_info SET price = 10000 where gadgets_name = 'Fan';

UPDATE gadgets_info SET price = 50000 where location = 'JayNagar';

UPDATE gadgets_info set gadgets_name = 'powerbank' where price = 50000;
select * from gadgets_info;
DELETE:
DELETE FROM table_name WHERE condition;
DELETE FROM gadgets_info where id = 5;

DELETE FROM gadgets_info where gadgets_name = 'Tv';

DELETE FROM gadgets_info where price = 50000;

SELECT * FROM voters_information;
AND:
COND1   COND2     RES
TRUE    FALSE     FALSE
FALSE   TRUE      FALSE
TRUE    TRUE      TRUE
FALSE   FALSE     FALSE
update voters_information set age = 24 where id = 13;
SELECT * FROM voters_information where address = 'Shivamogg'
AND id = 19;

SELECT * FROM voters_information where address = 'Shivamogga'
and age = 24 and id = 13;

update voters_information set voter_name = 'Prathibha' 
where address = 'Shivamogga' AND ID = 13;

update voters_information set voter_name = 'Kavya'
where address = 'Shivamogga' AND age = 24 and id = 110;

DELETE FROM voters_information where address = 'Shivamogga'
and id = 144;*/


SELECT * from customer;

ALTER table customer drop column  email ;
ALTER table customer drop column  number ;
ALTER table customer add column Address varchar(20);
INSERT into customer values(101,"latha","N",1234567876,"Nakundi");
    INSERT into customer values(102,"jyothi","gowda",9876543236,"krpuram");
    INSERT into customer values(103,"Raj","nagak",9234567887,"rajnagar");
    INSERT into customer values(104,"Shamsinga","singh",983457876,"banasawadi");
    INSERT into customer values(105,"nandish","rao",9823456776,"Nakundi");
    INSERT into customer values(106,"Ram","K",9645678726,"HSR");
    INSERT into customer values(107,"Raji","A",9764567876,"Nakundi");
    INSERT into customer values(108,"Raju","kumar",9654567876,"jayanagar");
    INSERT into customer values(109,"geetha","M",9234567876,"rammurtynagar");
    INSERT into customer values(200,"veena","rai",6234567876,"Hebbala");
    
    
    
    UPDATE customer SET first_name="rajanna";  /* change entire names in table so use column condition*/
    UPDATE customer set first_name="raji" where address="nakundi";
   
    /* AND operator
    1-0=0
    0-1=0
    0-0=0
    1-1=1
    */
    UPDATE customer set first_name="jyothi" where address="krpuram" and last_name="gowda";
    
    /* OR operator
    1-0=1
    0-1=1
    1-1=1
    0-0=0
    we can use multiple or/and  operater in same line .
    */
    UPDATE customer set first_name="Jyothi" where phone_number=9876543236 or customer_id=200;
    
     SELECT * from customer;
    DELETE from customer where first_name="rajanna" and last_name="k"  or customer_id=200;
    
    
    select * from customer where customer_id=101 and last_name="n";
    
     select * from customer where customer_id=101 and last_name="k";/*its not show row data bcz both condition is not true */
     
      select * from customer where customer_id=101 and last_name="k"  or first_name="raji" ; /*its come*/
      
       select * from customer where customer_id=101 or last_name="k"  and first_name="raji" ; /*its come*/
    
    
    

    





