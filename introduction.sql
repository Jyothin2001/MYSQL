/* MYSQL is structured query language is a language used to communicating with databases ,structred like database->tables->colums.
->SQL is a Case sensitive.
->do not use same column names in same database but we can create in different databases.
 ->DDL= data definition language use to create and manage the structure of database. 
or ddl statements are related to structure of database. like database->tables->colums*/

/*sytax for databases==CREATE(command) database(keyword) database_name;*/
CREATE database nov_27;
CREATE database xworkz;
CREATE database example;

use example;

/* SYNTAX for Table= CREATE table table_name(col1 datatype,col2 datatype,col3 datatype.......upto n);*/
CREATE table gadgets(id int,name varchar(20),price bigint);
SHOW databases;
