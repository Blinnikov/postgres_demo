DROP TABLE IF EXISTS test_serial;

CREATE TABLE test_serial
(
    id serial PRIMARY KEY,
    name text
);

INSERT INTO test_serial ( name ) VALUES ( 'Вишневая' );
INSERT INTO test_serial ( id, name ) VALUES ( 2, 'Прохладная' );

-- [23505] ERROR: duplicate key value violates unique constraint "test_serial_pkey"
-- Detail: Key (id)=(2) already exists.
INSERT INTO test_serial ( name ) VALUES ( 'Грушевая' );

INSERT INTO test_serial ( name ) VALUES ( 'Зеленая' );

DELETE FROM test_serial WHERE id = 4;

INSERT INTO test_serial ( name ) VALUES ( 'Луговая' );