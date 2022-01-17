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


SELECT name FROM animals JOIN owners ON owners.id = animals.owner_id WHERE owners.full_name = 'Melody Pond';

SELECT * FROM animals JOIN species ON species.id = animals.species_id WHERE species.name = 'Pokemon';

SELECT full_name, name FROM owners LEFT JOIN animals ON animals.owner_id = owners.id;

SELECT species.name, COUNT(animals.name) FROM animals JOIN species ON species.id = animals.species_id GROUP BY species.name;

SELECT animals.name FROM animals JOIN species ON species.id = animals.species_id JOIN owners ON owners.id = animals.owner_id WHERE owners.full_name = 'Jenniffer Orwell' AND species.name = 'Digimon';

 SELECT animals.name FROM animals JOIN owners ON owners.id = animals.owner_id WHERE animals.escape_attempts = 0 AND owners.full_name = 'Dean Winchester';

SELECT COUNT(owners.full_name), owners.full_name FROM animals JOIN owners ON owners.id = animals.owner_id GROUP BY owners.full_name ORDER BY COUNT(owners.full_name) DESC;




SELECT animals.name, visits.visit_date FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id =visits.vet_id WHERE vets.name = 'William Tatcher' ORDER BY visits.visit_date ASC LIMIT 1;

SELECT animals.name, visits.visit_date FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'Stephanie Mendez' GROUP BY (visits.visit_date, animals.name);

 SELECT vets.name, species.name FROM vets LEFT JOIN specialization ON specialization.vet_id = vets.id LEFT JOIN species 
ON species.id = specialization.species_id;

SELECT animals.name, visits.visit_date FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id WHERE visits.visit_date BETWEEN '2020-4-1' AND '2020-8-30';

SELECT animals.name, COUNT(visit_date) FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id GROUP BY animals.name ORDER BY COUNT(visit_date) DESC;

SELECT animals.name, visits.visit_date FROM animals JOIN visits ON visits.animal_id = animals.id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'Maisy Smith' ORDER BY visit_date ASC LIMIT 1;

SELECT animals.name, animals.date_of_birth, animals.escape_attempts, neutered, weight_kg, vets.name, vets.age, vets.date_of_graduation, visit_date FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id ORDER BY visit_date DESC LIMIT 1;

SELECT animals.name, animals.species_id as animal_species_id, visit_date, specialization.species_id as vet_species_id, 
vets.id, vets.name FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id JOIN specialization ON vets.id = specialization.vet_id WHERE animals.species_id != specialization.species_id;

SELECT animals.species_id, species.name FROM visits JOIN vets ON visits.vet_id = vets.id JOIN animals ON visits.animal_id = animals.id JOIN species ON animals.species_id=species.id  WHERE vets.name = 'Maisy Smith' GROUP BY (species.name, animals.species_id);

EXPLAIN ANALYZE SELECT COUNT(*) FROM visits WHERE animal_id = 4;

EXPLAIN ANALYZE SELECT * FROM visits WHERE vet_id = 2;

EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';



