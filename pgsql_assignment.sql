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


-- create sightings table
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    species_id INT,
    ranger_id INT,
    location VARCHAR (100),
    sighting_time DATE,
    notes TEXT,
    Foreign Key (species_id) REFERENCES species (species_id),
    Foreign Key (ranger_id ) REFERENCES rangers (ranger_id)
);


-- Provided data insert into sightings
INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Banboo Grove East', '2024-05-15 09:10:00', 'Feegin observed'),
(1, 2, 'Snofall Pass', '2024-05-18 18:30:00', NULL)


-- extra data insert into sightings
INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
(4, 4, 'Gir Forest', '2025-05-13', 'A single Asiatic lion resting.'),
(5, 2, 'Jim Corbett Pass', '2025-05-14', 'Leopard crossed the trail path.'),
(1, 5, 'Sundarbans', '2025-05-15', 'Deer herd observed in the grassland.'),
(2, 1, 'Kaziranga Pass', '2025-05-16', 'Birds and small mammals noticed.'),
(3, 4, 'Bandipur', '2025-05-17', 'Elephant calf seen with mother.'),
(4, 3, 'Gir Forest', '2025-05-18', 'Lion roar heard in distance.'),
(5, 2, 'Jim Corbett Pass', '2025-05-19', 'Tiger pugmarks found.'),
(1, 1, 'Sundarbans', '2025-05-20', NULL),
(2, 2, 'Kaziranga Pass', '2025-05-21', 'Rhino bathing in the lake.'),
(3, 3, 'Bandipur', '2025-05-22', NULL),
(4, 4, 'Gir Forest', '2025-05-23', 'Lioness with cubs spotted.'),
(5, 5, 'Jim Corbett Pass', '2025-05-24', 'Barking deer seen at dusk.')


--update sighting_time
UPDATE sightings
SET sighting_time = 
    CASE
        WHEN sighting_id = 7 THEN '2025-05-08 12:30:00'
        WHEN sighting_id = 8 THEN '2025-05-21 03:30:00'
        WHEN sighting_id = 11 THEN '2025-05-10 18:45:00'
        WHEN sighting_id = 12 THEN '2025-05-14 19:45:00'
        ELSE sighting_time
    END
WHERE sighting_id IN (7, 8, 11, 12); 


-- Problem_1 solution
INSERT INTO rangers (ranger_name, ranger_region) VALUES
('Derek Fox', 'Coastal Plains')


-- Problem_2 solution
SELECT common_name, count(*) AS sight_count FROM species
     INNER JOIN sightings ON
     species.species_id = sightings.species_id
    GROUP BY common_name


-- Problem_3 solution
SELECT * FROM sightings
    WHERE location LIKE '%Pass%'