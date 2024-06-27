 SELECT * from Oder_Info;
DESC Oder_Info;

/*iINSERT(COMAND) into(keyword) tabel_name values( sequence order based on datatype) and we can select specific columns and give values to them;
INSERT into tabel_name values(data1,data2,data3...);
In DDL(create,alter,drop,delete ) we cant't use WHERE clause and from is also a clause */

 INSERT into  Oder_Info values(1,'2023-9-12' , 1200,"online",'krpuram');
 INSERT INTO Oder_Info VALUES(2,'2024-2-8', 500,"offline","tin factory");
  INSERT INTO Oder_Info VALUES(3,'2024-2-8', 500,"offline","tin factory");
   INSERT INTO Oder_Info VALUES(4,'2024-3-18', 500,"offline","tin factory");
    INSERT INTO Oder_Info VALUES(5,'2024-3-3', 1000,"offline","hebbala");
    ALTER table Oder_Info rename column oder_ID to order_Id;
     ALTER table Oder_Info rename column oder_date to order_Date;
    INSERT into Oder_Info(order_Id,Payment_method) values(6,"online");
    INSERT into Oder_Info(order_date,shipping_address) values('2023-8-2',"hasan");
    INSERT into Oder_Info(order_Id,order_date,total_amount,Payment_method,shipping_address) values(7,'2024-7-29',800,"online","kudaoura");
     INSERT into Oder_Info(order_Id,order_date,total_amount,Payment_method,shipping_address) values(8,'2024-8-2',800,"online","jayanagar");
      INSERT into Oder_Info(order_Id,order_date,total_amount,Payment_method,shipping_address) values(9,'2024-9-4',800,"offline","banashakari");
       INSERT into Oder_Info(order_Id,order_date,total_amount,Payment_method,shipping_address) values(10,'2024-10-14',800,"online","belanduru");
    
     SELECT * from customer;

    create table customer(customer_ID int,first_name varchar(20),last_name varchar(20),phone_number bigint,address varchar(20));
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
    
         SELECT * from product;

    CREATE table product(ProductID int, productName varchar(20),customerSalesAmount bigint,p_date datetime,p_delivery boolean);
    
    INSERT into product values(221,"fridge",50000,'2020-5-8 10:10:00',true);
     INSERT into product values(222,"fan",5000,'2020-9-18 10:18:10',false);
      INSERT into product values(223,"TV",50000,'2020-6-7 16:10:00',true);
       INSERT into product values(224,"bike",100000,'2020-7-10 04:10:00',false);
        INSERT into product values(225,"car",150000,'2020-10-8 10:10:00',false);
         INSERT into product values(226,"AC",30000,'2020-5-8 18:10:00',true);
          INSERT into product values(227,"spoon",50,'2020-5-3 7:10:00',false);
           INSERT into product values(228,"table",100000,'2020-12-29 12:10:00',true);
            INSERT into product values(229,"book",35,'2020-8-26 10:19:00',true);
            INSERT into product values(300,"glass",100,'2020-9-19 10:13:13',true);
    
    SELECT * from product where productName="fan";/* give full row information*/
    SELECT *from product where productid=300;
    
    SELECT * from Employee ;
    
     CREATE table Employee(Employee_ID int,E_name varchar(20),salary int,E_position varchar(20),Department varchar(20));
     
     INSERT into Employee values(1,"raj",30000,"Trainee","testing");
      INSERT into Employee values(2,"ramu",80000,"HR","Development");
       INSERT into Employee values(3,"raghu",30000,"Trainee","Development");
        INSERT into Employee values(4,"rahul",30000,"Trainee","Development");
         INSERT into Employee values(5,"ramya",30000,"Trainee","Development");
          INSERT into Employee values(6,"raani",30000,"Trainee","finance");
           INSERT into Employee values(7,"teja",60000,"Team Lead","finance");
            INSERT into Employee values(8,"kumar",30000,"Trainee","Development");
             INSERT into Employee values(9,"shiva",30000,"Trainee","Development");
              INSERT into Employee values(10,"ganesha",30000,"Trainee","Development");
    
    SELECT * from Employee where salary=30000;
     SELECT * from Employee where department="development";
      SELECT * from Employee where e_position="HR";
      
      
      SELECT * from sales;
      
      CREATE table sales(sale_ID int,customer_id int,product_ID int,quantity int,price int);
    
    INSERT into sales values(111,101,221,2,1000);
    INSERT into sales values(112,102,222,1,16000);
    INSERT into sales values(113,103,223,2,61000);
    INSERT into sales values(114,104,224,3,17000);
    INSERT into sales values(115,105,225,6,11000);
    INSERT into sales values(116,106,226,6,41000);
    INSERT into sales values(117,107,227,4,44000);
    INSERT into sales values(118,108,228,8,8000);
    INSERT into sales values(119,109,229,9,45000);
    INSERT into sales values(120,110,230,2,89000);
    
    SELECT * from sales where sale_id=114;
     SELECT * from sales where quantity=6;
     
     
     create table employee(id int not null unique,e_id int primary key,e_name varchar(30),salary bigint,e_position varchar(20),
department varchar(20));
    create table company1(id int not null unique,e_id int ,foreign key(e_id) references employee(e_id) on delete cascade on update cascade,
    name varchar(20),address varchar(20),ceo varchar(20));
    delete from  company1 ;
    Alter table company1 modify column c_id int;     
      INSERT into Employee values(1,101,"rahul",50000,"trainee","frontend");
      INSERT into Employee values(2,102,"ramu",80000,"HR","Development");
      delete from company1 where c_id=102;
       INSERT into Employee values(3,103,"raghu",30000,"Trainee","Development");
        INSERT into Employee values(4,104,"rahul",30000,"Trainee","Development");
         INSERT into Employee values(5,105,"ramya",30000,"Trainee","Development");
          INSERT into Employee values(6,106,"raani",30000,"Trainee","finance");
           INSERT into Employee values(7,107,"teja",60000,"Team Lead","finance");
            INSERT into Employee values(8,108,"kumar",30000,"Trainee","Development");
             INSERT into Employee values(9,109,"shiva",30000,"Trainee","Development");
              INSERT into Employee values(10,110,"ganesha",30000,"Trainee","Development");
               INSERT into Employee values(11,111,"raj",30000,"Trainee","Development");
    
    select * from company1;
    desc company1;
INSERT INTO COMPANY1 values(11,101,"Wipro","manyathaTechPark","Jyothi");
INSERT INTO COMPANY1 values(11,101,"Wipro","manyathaTechPark","Jyothi");
insert into company1 values(12,102,"TATA","manyathaTechPark","rathan tata"),(13,103,"windows","hebbal","bill gates");
insert into company1 values(14,104,"cognizant","manyathaTechPark","narana"),(15,105,"windows","hebbal","bill gates"),
(16,106,"cognizant","manyathaTechPark","narana"),(17,107,"windows","hebbal","bill gates");
INSERT INTO COMPANY1 values(18,108,"Wipro","manyathaTechPark","raj");
INSERT INTO COMPANY1 values(19,109,"Wipro","manyathaTechPark","ram");
INSERT INTO COMPANY1 values(20,109,"Wipro","manyathaTechPark","ram");
INSERT INTO COMPANY1 values(21,110,"Wipro","manyathaTechPark","Jyothi");
delete from employee where e_id=102;
INSERT INTO COMPANY1 values(22,110,"Wipro","manyathaTechPark","Jyothi");
INSERT INTO COMPANY1 values(23,114,"Wipro","manyathaTechPark","Jyothi");productsproductproductscustomers
 

