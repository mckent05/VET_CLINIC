/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Agumon', '2020-2-3', true, 10.23, 0);

INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Gabumon', '2018-11-15', true, 8, 2);

INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Pikachu', '2021-1-7', false, 15.04, 1);

INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Devimon', '2017-5-12', true, 11, 5

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-2-8', 0, false, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', '2022-9-15', 2, true, 5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtile', '1993-4-2', 3, false, 12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', '2005-6-12', 1, true, 45);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon','2005-6-7', 7, true, 20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom','1998-10-13', 3, true, 17);
);


INSERT INTO owners ( full_name, age ) VALUES ('Sam Smith', 34);

INSERT INTO owners ( full_name, age ) VALUES ('Jenniffer Orwell', 19); 

INSERT INTO owners ( full_name, age ) VALUES ('Bob', 45);              

INSERT INTO owners ( full_name, age ) VALUES ('Melody Pond', 77); 

INSERT INTO owners ( full_name, age ) VALUES ('Dean Winchester', 14); 

INSERT INTO owners ( full_name, age ) VALUES ('Joddie Whittaker', 38); 


INSERT INTO species (name) VALUES('Pokemon');

INSERT INTO species (name) VALUES('Digimon');

UPDATE animals SET species_id = 4 WHERE name LIKE '%mon';

UPDATE animals SET species_id = 3 WHERE name NOT LIKE '%mon';

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon'; 

UPDATE animals SET owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu'); 

UPDATE animals SET owner_id = 3 WHERE name IN ('Devimon', 'Plantmon');

 UPDATE animals SET owner_id = 4 WHERE name IN ('Charmander', 'Squirtile', 'Blossom');

 UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');