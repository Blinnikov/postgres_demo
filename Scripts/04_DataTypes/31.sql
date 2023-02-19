CREATE TABLE birthdays
(
    person text NOT NULL,
    birthday date NOT NULL
);

INSERT INTO birthdays VALUES ( 'Ken Thompson', '1955-03-23' );
INSERT INTO birthdays VALUES ( 'Ben Johnson', '1971-03-19' );
INSERT INTO birthdays VALUES ( 'Andy Gibson', '1987-08-12' );

SELECT * FROM birthdays
WHERE extract('mon' from birthday) = 3;

SELECT *, birthday + '50 years'::interval
FROM birthdays
WHERE birthday + '50 years'::interval < current_timestamp;

SELECT *, birthday + '50 years'::interval
FROM birthdays
WHERE birthday + '50 years'::interval < current_date;

select current_database();

SELECT *, justify_interval((current_date::timestamp - birthday::timestamp)::interval)
FROM birthdays;

SELECT *, extract('y' from justify_interval((current_date::timestamp - birthday::timestamp)::interval))
FROM birthdays;