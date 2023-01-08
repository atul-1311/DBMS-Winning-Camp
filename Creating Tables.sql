show databases;
use k_atul_20bcs5935;

create table Emp (sn int, Name char(30), StudentName char(30), EmployeeName char(30), Roll int, EmpId int, Fees int, Salary int, Fine int, Bonus int, ran int);
insert into Emp values (1, "Prabhjot", "Shikhar", "Ramesh", 1, 1001, 25000, 50000, 500, 1000, 3);
insert into Emp values (2, "Rahul", "Aviral", "Suresh", 4, 1003, 30000, 70000, 800, 3000, 1);
insert into Emp values (3, "Ayush", "Sunny", "Hrithik", 2, 1005, 20000, 30000, 200, 300, 2);
insert into Emp values (4, "Navin", "Shekhar", "Sharaz", 5, 1002, 35000, 65000, 900, 2000, 5);
insert into Emp values (5, "Sachin", "Gaurav", "Harsh", 3, 1004, 65000, 70000, 400, 3000, 4);

insert into Emp values (6, "Jigyashu", "Ketan", "Mahesh", 8, 1006, 40000, 20000, 600, 1000, 8);
insert into Emp values (7, "Soumya", "Kajal", "Divij", 6, 1007, 34000, 56000, 100, 3000, 7);
insert into Emp values (8, "Prakahr", "Anup", "Gourab", 9, 1009, 33000, 44000, 1000, 5000, 9);
insert into Emp values (9, "Keshav", "Kartik", "Shahrukh", 10, 1010, 40000, 44000, 200, 900, 6);
insert into Emp values (10, "Soni", "Rounak", "Abhinay", 7, 1008, 28000, 47000, 500, 1000, 10);

insert into Emp values (11, "Aniket", "Aftab", "Jivat", 13, 1011, 25000, 50000, 500, 1000, 12);
insert into Emp values (12, "Abhishek", "Shalini", "Apoorva", 12, 1012, 55000, 60000, 100, 1000, 13);
insert into Emp values (13, "Deepak", "Anuj", "Anurag", 14, 1014, 33000, 22000, 440, 3300, 15);
insert into Emp values (14, "Divya", "Arya", "Aryan", 11, 1015, 25600, 57700, 700, 4400, 11);
insert into Emp values (15, "Love", "Apoorva", "Prince", 15, 1013, 26700, 76500, 440, 3300, 14);

select * from Emp;