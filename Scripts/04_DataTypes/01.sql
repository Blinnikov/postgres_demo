CREATE TABLE test_numeric
(
    measurement numeric(5, 2),
    description text
);

-- [22003] ERROR: numeric field overflow
-- Detail: A field with precision 5, scale 2 must round to an absolute value less than 10^3.
INSERT INTO test_numeric
VALUES (999.9999, 'Measurement #1');

-- OK 999.90
INSERT INTO test_numeric
VALUES (999.9009, 'Measurement #2');

-- OK 999.11
INSERT INTO test_numeric
VALUES (999.1111, 'Measurement #3');

-- OK 999.00
INSERT INTO test_numeric
VALUES (998.9999, 'Measurement #4');