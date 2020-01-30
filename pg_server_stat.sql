SELECT count(*)
FROM pg_stat_activity;


select *
from pg_stat_activity;


select *
from pg_user;


select *
from pg_database;


select *
from pg_catalog;


SELECT to_regclass('pg_user');


SELECT 'pg_user'::regclass;


select *
From pg_database;


ALTER DATABASE postgres CONNECTION
LIMIT 1;


select *
from pg_settings;


SET default_transaction_read_only to on;


select pg_reload_conf();


CREATE ROLE car_portal_role LOGIN;


CREATE DATABASE car_portal ENCODING 'UTF-8' LC_COLLATE 'en_US.UTF-8' LC_ CTYPE 'en_US.UTF-8' TEMPLATE template0 OWNER car_portal_app;

REVOKE
CREATE ON SCHEMA public
FROM PUBLIC;


SELECT *
FROM pg_catalog.pg_database;

TABLE pg_catalog.pg_database;

SHOW search_path;


CREATE SCHEMA
AUTHORIZATION car_portal_app;

SHOW SYSDATE;

-- setting up schema and database in search SEARCH_PATH

set search_path To public,
                   "$user",
                   TEST,
                   postgres;

SHOW SEARCH_PATH;

-- search path withotu schemaa

select *
from public.customers;

-- search path with schema

select *
From customers;


ALTER DATABASE postgres CONNECTION
LIMIT 1;


SET default_transaction_read_only to on;


SELECT pg_reload_conf();

