-- Active: 1747547619109@@127.0.0.1@5432@pgsql_ass_db
CREATE TABLE test (
    id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO test (name) VALUES
('hridoy'),
('sagor'),
('batach'),
('akash')

SELECT * FROM test