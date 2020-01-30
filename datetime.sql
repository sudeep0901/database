select current_database();


select current_query();


select current_schema();

-- select current_settings();

select txid_current();


select "current_user"();


set timezone To 'Asia/Calcutta';


select cast (now() as text);


select now();

SHOW timezone;


select now(),
       now()::timestamp,
       now() AT TIME ZONE 'CET';


SELECT ('2014-08-27 21:00:18.36009'::timestamp AT time zone 'CST' AT TIME ZONE 'UTC')::timestamptz;


SELECT NOW() + Interval '1 hour, 30 minutes'
select now()::date;


CREATE TABLE account (account_id SERIAL PRIMARY KEY,
                                                first_name TEXT NOT NULL,
                                                                last_name TEXT NOT NULL,
                                                                               email TEXT NOT NULL UNIQUE,
                                                                                                   password TEXT NOT NULL,
                                                                                                                 CHECK(first_name !~ '\s'
                                                                                                                       AND last_name !~ '\s'),
                                                                                                                 CHECK (email ~* '^\w+@\w+[.]\w+$'), CHECK (char_length(password)>=8));


select *
from account;


CREATE VIEW test AS
SELECT 1 AS one;


CREATE TABLE test (one INTEGER);


CREATE RULE "_RETURN" AS ON
SELECT TO test DO INSTEAD
SELECT 1;


select *
from
    (select 1) AS TEST;


CREATE VIEW day_only AS
SELECT date_trunc('day', now()) AS day;


select *
from day_only;


CREATE VIEW month_only AS
SELECT date_trunc('month', day_only.day)AS month
FROM day_only;


select *
from month_only;


select table_name,
       is_insertable_into
from information_schema.tables
where table_name ='customers';

