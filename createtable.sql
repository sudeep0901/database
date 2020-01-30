drop table customer;


create table customer (customer_id serial, name varchar);


insert into customer (name)
VALUES('Manasvi Patel');


select *
from customer;


insert into customer (name)
VALUES('Manasvi Patel');


select *
from customer;


insert into customer (name)
VALUES('Manasvi Patel');


select *
from customer;


create SEQUENCE customer_customer_id_sq;


create table CUSTOMER_with_seq (customer_id INTEGER not NULL DEFAULT NEXTVAL('customer_customer_id_seq'))
ALTER SEQUENCE customer_customer_id_seq OWNED BY CUSTOMER_with_seq.customer_id;


from CUSTOMER_with_seq;


select cast(5.9 as int) as rounded_up,
       cast(5.5 as INTEGER) as rounded_down;


select 5.5::int;


create table char_size_test (size char(10));


create table varchar_size_test(size varchar(10));

with test_data AS
    (select substring(md5(random()::text), 1, 10)
     from generate_series(1, 1000000)),
     char_data_insert as
    (INSERT INTO char_size_test select *
     From test_data)
INSERT INTO varchar_size_test
SELECT *
FROM test_data;


SELECT pg_size_pretty(pg_relation_size ('char_size_test')) AS char_size_test,
       pg_size_pretty(pg_relation_size ('varchar_size_test')) AS varchar_size_test;


select *
from char_size_test;


select count(*)
from char_size_test;


select *
from generate_series(1, 100);


CREATE FUNCTION test_security_definer () RETURNS TEXT AS $$
SELECT 'current_user :'||current_user || ' session_user: ' || session_
user; $$ LANGUAGE SQL SECURITY DEFINER;


CREATE FUNCTION test_security_invoker () RETURNS TEXT AS $$
SELECT 'current_user :'||current_user || ' session_user: ' || session_
user; $$ LANGUAGE SQL SECURITY INVOKER