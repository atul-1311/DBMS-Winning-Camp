use k_atul_20bcs5935;

create table Teachers (Id integer, Name Char(20) unique, Department char(20), Hiredate date not null, Category char(3), Gender char(1) default 'M', salary decimal check (salary>19000), primary key (Id));
insert into Teachers values (1,'Tanya Sharma', 'Social Studies', '1994-03-17', 'TGT', 'F', 25000);
insert into Teachers values (2,'Saurabh Sharma', 'Art', '1990-02-12', 'PRT', 'M', 20000);
insert into Teachers values (3,'Nandita Arora', 'English', '1980-05-16', 'PGT', 'F', 30000);
insert into Teachers values (4,'James Jacob', 'English', '1989-10-16', 'TGT', 'M', 25000);
insert into Teachers values (5,'Jaspreet Kaur', 'Hindi', '1990-08-01', NULL, 'F', 22000);
insert into Teachers values (6,'Disha Sehgal', 'Math', '1980-03-17', 'PRT', 'F', 21000);
insert into Teachers values (7,'Siddarth Kapoor', 'Science', '1994-09-02', 'TGT', 'M', 27000);
insert into Teachers values (8,'Sonali Mukherjee', 'Math', '1980-11-17', NULL, 'F', 24500);

desc Teachers;
select * from Teachers;
select * from Teachers where category='PGT';
select * from Teachers where gender='F' and department='Hindi';
select Name, Department, Hiredate from Teachers order by Hiredate asc;
select * from Teachers order by salary desc;
select * from Teachers where Hiredate>'1990-01-01';
select * from Teachers where Department not in ('English', 'Math', 'Science');
select * from Teachers where Category is null;
select * from Teachers where Category not in ('PGT');
select Name, Gender from Teachers where Department in ('English','Hindi','Art');
select * from Teachers where Department='English' or salary>30000;
select * from Teachers where Name like "_a%";
select * from Teachers where Name like "S%";
select * from Teachers where length(Name)=12;
select Name from Teachers where Name like "%a";
select distinct Department from Teachers;
select Name, salary from Teachers where salary between 20000 and 40000; 
select min(salary) as Min_Salary, max(salary) as Max_Salary from Teachers;
select Name, salary from Teachers where salary = (select max(salary) from Teachers);
select count(*) from Teachers where Department='Hindi';
select avg(salary) from Teachers;
select sum(salary) from Teachers;
select count(*), Department from Teachers group by Department;
select count(*) as numbers, Department from Teachers group by Department having numbers>=2;
update Teachers set salary=salary+5000 where Name='Nandita Arora';

alter table Teachers add Address char(30);

select Name from Teachers where Id = all (select Id from Teachers where salary>=20000);