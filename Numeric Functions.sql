create table Marks (subjectName char(20), marks1 double, marks2 double, marks3 double, marks4 double, marks5 double);
insert into Marks values ('Maths', 95, 94, 74, 79, 65);
insert into Marks values ('CSE', 87, 45, 67, 90, 68);
insert into Marks values ('SQL', 83, 98, 89, 90, 56);
insert into Marks values ('Physics', 91, 75, 96, 79, 88);
insert into Marks values ('SoftSkill', 88, 78, 64, 79, 85);
select * from Marks;

-- Numeric Functions
select sum(marks1) from Marks;
select min(marks2) from Marks;
select max(marks5) from Marks;
select count(marks4) from Marks;
select power(marks2,2) from Marks;
select avg(marks1) from Marks;
select round(avg(marks1),0) from Marks;
select round(sqrt(avg(marks1)),2) from Marks;
select exp(round(sqrt(avg(marks1)),0)) from Marks;
select greatest(marks1,marks2,marks3,marks4,marks5) from Marks where subjectName='Maths';
select least(marks1,marks2,marks3,marks4,marks5) from Marks where subjectName='Physics';
select mod(sum(marks1),7) from Marks;
select truncate(sqrt(avg(marks1)),2) from Marks;
select floor(sqrt(avg(marks1))) from Marks;
select ceil(sqrt(avg(marks1))) from Marks;

-- string functions

