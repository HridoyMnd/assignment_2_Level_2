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


-- create species  table
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name TEXT,
    scientific_name TEXT,
    discovery_date DATE,
    conservation_status VARCHAR(50)
);


-- updata type date to timestamp
ALTER TABLE sightings
    ALTER COLUMN sighting_time TYPE TIMESTAMP;


-- Provided data insert into species 
INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens ', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered')


-- extra data insert into species
INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Indian Rhinoceros', 'Rhinoceros unicornis', '1758-01-01', 'Vulnerable'),
('Asiatic Lion', 'Panthera leo persica', '1826-01-01', 'Endangered'),
('Spotted Deer', 'Axis axis', '1777-01-01', 'Vulnerable'),
('Sloth Bear', 'Melursus ursinus', '1791-01-01', 'Vulnerable'),
('Indian Peacock', 'Pavo cristatus', '1758-01-01', 'Endangered'),
('Great Indian Bustard', 'Ardeotis nigriceps', '1863-01-01', 'Endangered')
