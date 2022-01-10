/*Queries that provide answers to the questions from all projects.*/

--Find all animals whose name e
vet_clinic=# SELECT * FROM animals where name LIKE '%mon%';

--List the name of all animals born between 2016 and 2019
vet_clinic=# SELECT name FROM animals where date_of_birth BETWEEN '2016-1-1' AND '2019-12-1';

--List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT name FROM animals where neutered = true and escape_attempts < 3;

--List date of birth of all animals named either "Agumon" or "Pikachu".
vet_clinic=# SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');

--List name and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

--Find all animals that are neutered.
SELECT * FROM animals WHERE neutered = true;

--Find all animals not named Gabumon.
vet_clinic=# SELECT * FROM animals WHERE name != 'Gabumon';

--Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
SELECT * FROM animals WHERE weight_kg >=10.4 AND weight_kg <= 17.3;


