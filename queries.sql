/*Queries that provide answers to the questions from all projects.*/

--Find all animals whose name ends in 'mon'
SELECT * FROM animals where name LIKE '%mon%';

--List the name of all animals born between 2016 and 2019
SELECT name FROM animals where date_of_birth BETWEEN '2016-1-1' AND '2019-12-1';

--List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT name FROM animals where neutered = true and escape_attempts < 3;

--List date of birth of all animals named either "Agumon" or "Pikachu".
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');

--List name and escape attempts of animals that weigh more than 10.5kg
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

--Find all animals that are neutered.
SELECT * FROM animals WHERE neutered = true;

--Find all animals not named Gabumon.
SELECT * FROM animals WHERE name != 'Gabumon';

--Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
SELECT * FROM animals WHERE weight_kg >=10.4 AND weight_kg <= 17.3;

--How many animals are there
SELECT COUNT(*) FROM animals;
--  count
-------
--     9
--(1 row)

--How many animals have never tried to escape
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
--  count
-------
--  2
--(1 row)

--what is the avergae weight of all animals
SELECT AVG(weight_kg) FROM animals;
-- avg
---------------------
-- 16.6444444444444444
-- (1 row)

--who escapes most beween neutered and not neutered animals
SELECT SUM(escape_attempts), neutered FROM animals GROUP BY (neutered);
 --sum | neutered
-----+----------
 --  4 | f
 -- 18 | t
--(2 rows)

--What is the mininum and maximum weight of each type of animal
SELECT MAX(weight_kg), MIN(weight_kg), species FROM animals GROUP BY (species);
-- max | min | species
-----+-----+---------
 -- 17 |  11 | pokemon
 -- 45 |   8 | digimon
--(2 rows)

--What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-1-1' AND '2000-12-31' GROUP BY(species);
--species |        avg
---------+--------------------
 --pokemon | 3.0000000000000000
--(1 row)


