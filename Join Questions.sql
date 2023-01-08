use k_atul_20bcs5935;

create table salesman (s_id int, s_name char(30), s_city char(30), s_commission double);
insert into salesman values (5001, "James Hoog", "New York", 0.15);
insert into salesman values (5002, "Nail Knite", "Paris", 0.13);
insert into salesman values (5005, "Pit Alex", "London", 0.11);
insert into salesman values (5006, "Mc Lyon", "Paris", 0.14);
insert into salesman values (5007, "Paul Adam", "Rome", 0.13);
insert into salesman values (5003, "Lauson Hen", "San Jose", 0.12);

create table customers (c_id int, c_name char(30), c_city char(30), grade int, s_id int);
insert into customers values (3002, "Nick Roimando", "New York", 100, 5001);
insert into customers values (3007, "Brad Davis", "New York", 200, 5001);
insert into customers values (3005, "Graham Zushi", "California", 200, 5002);
insert into customers values (3008, "Julian Green", "London", 300, 5002);
insert into customers values (3004, "Fabian Johnson", "Paris", 300, 5006);
insert into customers values (3009, "Geoff Cameron", "Berlin", 100, 5003);
insert into customers values (3003, "Jozy Altidon", "Moscow", 200, 5007);
insert into customers values (3001, "Brad Guzan", "London", null , 5005);

create table scorders (ord_no int, puch_amt double, ord_date date, c_id int, s_id int);
insert into scorders values (70001, 150.5, "2012-10-05", 3005, 5002);
insert into scorders values (70009, 270.65, "2012-09-10", 3001, 5005);
insert into scorders values (70002, 65.26, "2012-10-05", 3002, 5001);
insert into scorders values (70004, 110.5, "2012-08-17", 3009, 5003);
insert into scorders values (70007, 948.5, "2012-09-10", 3005, 5002);
insert into scorders values (70005, 2400.5, "2012-07-27", 3007, 5001);
insert into scorders values (70008, 5670, "2012-09-10", 3002, 5001);
insert into scorders values (70010, 1983.43, "2012-10-10", 3004, 5006);
insert into scorders values (70003, 2480.4, "2012-10-10", 3009, 5003);
insert into scorders values (70012, 250.45, "2012-06-27", 3008, 5002);
insert into scorders values (70011, 75.29, "2012-08-17", 3003, 5007);
insert into scorders values (70013, 3045.6, "2012-04-25", 3002, 5001);

-- From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city. 
select s.s_name as salesperson, c.c_name as customer, s.s_city as city from customers as c, salesman as s where s.s_city=c.c_city;

-- From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
select o.ord_no, o.puch_amt, c.c_name, c.c_city from scorders as o, customers as c where o.puch_amt between 500 and 2000;