create or replace function the_time() returns timestamp with time zone as $$

select now();
$$ LANGUAGE SQL;


create or replace function the_time2() returns timestamptz as $$

select now();
$$ LANGUAGE SQL;


select the_time();


create OR REPLACE FUNCTION the_time_by_zone(tz varchar) returns timestamp as $$
select now() at time zone tz;
$$ LANGUAGE SQL;


select the_time_by_zone('PDT');


create or replace function the_time() returns TIMESTAMP with time zone as $$

select now();
$$ LANGUAGE SQL;


select the_time();


create OR REPLACE FUNCTION the_time_by_zone1(varchar) returns timestamp as $$
select now() at time zone $1;
$$ LANGUAGE SQL;


create OR REPLACE FUNCTION the_time_by_out(varchar, out timestamp) returns timestamp as $$
select now() at time zone $1;
$$ LANGUAGE SQL;

