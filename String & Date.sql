-- string functions
select ltrim('atul');
select lpad('atul',6,'b');
select rpad('atul',6,'a');
select vsize('atul bb');
select ascii('ab');

-- date functions
select current_date();
select dayofweek(sysDate());
select dayofmonth(sysdate());
select curtime();
select hour(curtime());
select minute(curtime());
select monthname(sysdate());
select dayname(sysdate());
select timestamp(curtime());