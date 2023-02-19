SHOW data_directory;
SHOW db_user_namespace;
SHOW all;

SHOW datestyle;

SELECT '18-05-2016'::date;
SELECT '05-18-2016'::date;
SELECT '2016-05-18'::date;

SET datestyle TO 'DMY';
SET datestyle TO DEFAULT;

SET datestyle TO 'Postgres, DMY';

SELECT '05-18-2016'::timestamp;
