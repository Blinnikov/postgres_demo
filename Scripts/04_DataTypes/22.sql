SHOW intervalstyle;

-- postgres
-- sql_standard
-- postgres_verbose
-- iso_8601

SET intervalstyle TO 'sql_standard';
SELECT '1 mon'::interval;

SET intervalstyle TO DEFAULT;