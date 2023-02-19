CREATE TABLE test_serial
(
    id serial,
    name text
);

INSERT INTO test_serial ( name ) VALUES ( 'Вишневая' );
INSERT INTO test_serial ( name ) VALUES ( 'Грушевая' );
INSERT INTO test_serial ( name ) VALUES ( 'Зеленая' );
INSERT INTO test_serial VALUES ('Красная');

INSERT INTO test_serial (id, name) VALUES (10, 'Прохладная');
INSERT INTO test_serial (name) VALUES ('Луговая');