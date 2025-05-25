-- Active: 1747547619109@@127.0.0.1@5432@pgsql_ass_db

-- Create ranger table
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    ranger_name TEXT,
    ranger_region TEXT
)


-- Provided data insert into rangers
INSERT INTO rangers(ranger_name, ranger_region) VALUES 
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range')


-- extra data insert into rangers
INSERT INTO rangers (ranger_name, ranger_region) VALUES
('Ajay Kumar', 'Sundarbans'),
('Reena Das', 'Kaziranga'),
('Sanjay Singh', 'Bandipur'),
('Meera Patel', 'Gir Forest'),
('Vikram Sen', 'Jim Corbett'),
('Nisha Verma', 'Manas National Park'),
('Rohit Roy', 'Periyar'),
('Anjali Mehra', 'Ranthambore')
