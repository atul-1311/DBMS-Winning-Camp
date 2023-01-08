show databases;
use k_atul_20bcs5935;

create table customer (c_id int, c_name char(30), email char(30));
insert into customer values (1, "Shikhar", "shikhar@gmail.com");
insert into customer values(2, "Vansh", "vansh@gmail.com");
insert into customer values (3, "Aryan", "aryan@gmail.com");
insert into customer values (4, "Prabhjot", "prabhxs@gmail.com");
insert into customer values (5, "Soumya", "soumya@gmail.com");
insert into customer values (6, "Atul", "atul@gmail.com");

create table orders (o_id int, o_name char(30), o_price int, qty int, dateOfDispatching char(30), paymentMode char(30), c_id int);
insert into orders values (1, "cake", 50, 2, "2022-12-12", "COD", 8);
insert into orders values (2, "pastry", 20, 1, "2022-12-08", "UPI", 6);
insert into orders values (3, "Bread", 20, 2, "2022-12-01", "COD", 6);
insert into orders values (4, "Donut", 20, 1, "2022-11-24", "COD", 1);
insert into orders values (5, "pizza", 60, 2, "2022-11-20", "UPI", 2);
insert into orders values (6, "Bread", 40, 4, "2022-11-11", "COD", 4);
insert into orders values (7, "Brownie", 15, 3, "2022-11-04", "UPI", 2);

select * from customer;
select * from orders;

-- inner join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c inner join orders as o on c.c_id=o.c_id order by o.dateOfDispatching desc;

-- left join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c left join orders as o on c.c_id=o.c_id order by o.dateOfDispatching desc;

-- right join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c right join orders as o on c.c_id=o.c_id order by o.dateOfDispatching desc;

-- full outer join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c left join orders as o on c.c_id=o.c_id  
union
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c right join orders as o on c.c_id=o.c_id;

-- left inner join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c inner join orders as o on c.c_id=o.c_id 
union
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c left join orders as o on c.c_id=o.c_id;

-- right inner join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c inner join orders as o on c.c_id=o.c_id
union
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c right join orders as o on c.c_id=o.c_id;

-- left join excluding inner join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c left join orders as o on c.c_id=o.c_id where o.o_name is NULL;

-- right join excluding inner join
select c.c_name, c.email, o.o_name, o.qty, o.paymentMode, o.dateOfDispatching from customer as c right join orders as o on c.c_id=o.c_id where c.c_name is null;
