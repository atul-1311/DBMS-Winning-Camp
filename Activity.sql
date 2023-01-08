show databases;
use k_atul_20bcs5935;

create table Activity (Acode int, Activity_Name char(20), Stadium char(30), Participants_Number int, Prize_Money int, Scheduled date);
insert into Activity values (1001, 'Relay', 'Star Annex', 16, 10000, '2004-01-23');
insert into Activity values (1002, 'High Jump', 'Star Annex', 10, 12000, '2003-12-12');
insert into Activity values (1003, 'Shot Put', 'Super Power', 12, 8000, '2004-02-14');
insert into Activity values (1005, 'Long Jum', 'Star Annex', 12, 9000, '2004-01-01');
insert into Activity values (1008, 'Discuss Throw', 'Super Power', 10, 15000, '2004-03-19');

create table Coach (Pcode int, Name char(30), Acode int);
insert into Coach values (1, 'Ahmed Hussain', 1001);
insert into Coach values (2, 'Ravinder', 1008);
insert into Coach values (3, 'Janilla', 1001);
insert into Coach values (4, 'Naaz', 1003);

select Acode, Activity_Name from Activity order by Acode desc; 
select sum(Prize_Money), Stadium from Activity group by Stadium;
select Acode, Name from Coach order by Acode asc;
