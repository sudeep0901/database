select *
from typessamples;


select currval('typessamples_rowid_seq');

TRUNCATE typessamples;


drop table typesamples;


create TABLE typesamples(rowid serial, myname character(50), myprice float);


select *
from typesamples;


insert into typesamples (myname, myprice)
values ('sudeep',
        34.54545);


insert into typesamples (myname, myprice)
values ('sudeep',
        'Infinity');


select *
from typesamples;


create table lunch (myname varchar(50), borndate timestamp check (borndate > '1/1/1982') , lunchdate date, lunchtime time);


insert into lunch (myname, borndate,lunchdate, lunchtime)
values('SUDEEP APTEL',
       '1/1/1990',
       'today',
       'allballs');


select *
from lunch;

-- INHERITANCE IN POSTGRES

create table address (building character(20), street character(50), city CHARACTER(50), country CHARACTER(50));


INSERT INTO ADDRESS
VALUES('building 1',
       'saket',
       'mumbai',
       'bharat');


INSERT INTO ADDRESS
VALUES('building 2',
       'old mumbai',
       'mumbai',
       'bharat');


create table CustomerData (firstname VARCHAR(50), lastname VARCHAR(50), dob DATE DEFAULT CURRENT_DATE) INHERITS (ADDRESS)
select *
from address;


select *
from only address;


select *
from customerdata;


INSERT INTO CustomerData
VALUES('building 3',
       'saket',
       'mumbai',
       'bharat',
       'sudeep',
       'patel',
       'today');


SELECT *
from CustomerData;

-- sizse of index

SELECT pg_size_pretty(pg_indexes_size ('car_portal_app.
account_pkey'));

-- curernt time in TRANSACTION

select CURRENT_TIME;


select Timeofday();