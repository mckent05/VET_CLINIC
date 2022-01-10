/* Populate database with sample data. */

vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Agumon', '2020-2-3', true, 10.23, 0);
INSERT 0 1
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Gabumon', '2018-11-15', true, 8, 2);
INSERT 0 1
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Pikachu', '2021-1-7', false, 15.04, 1);
INSERT 0 1
vet_clinic=# INSERT INTO animals (name, date_of_birth, neutered, weight_kg, escape_attempts) VALUES('Devimon', '2017-5-12', true, 11, 5);
INSERT 0 1
