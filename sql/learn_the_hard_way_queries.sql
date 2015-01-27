-- In these tables I made a 3rd relation table to link them. How would you get rid of this relation table person_pet and put that information right into person? What's the implication of this change?
--add pet_id to the person table and person_id to pet table. To access pet, you will have to match pet.id to person.pet_id
-- If you can put one row into person_pet, can you put more than one? How would you record a crazy cat lady with 50 cats?
--Yes, you can add more than one.
INSERT INTO person
SELECT '1' AS 'id','Barbara' AS 'first_name', 'Smith' AS 'last_name', '55' AS 'age';

INSERT INTO pet
SELECT '1' AS 'id', 'Whiskers' AS 'name', 'Persian' AS 'breed', '5' AS 'age','0' AS 'dead'
UNION SELECT '2', 'Jaws', 'Tabby', '3', '0';

INSERT INTO person_pet
SELECT '1' AS person_id, '1' AS pet_id
UNION SELECT '2', '2';

--would need to insert a record for each cat, 50 records in total which would follow the format int third line of the sql statement


-- Create another table for the cars people might own, and create its corresponding relation table.
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    make TEXT,
    model TEXT,
    age INTEGER,
);

CREATE TABLE person_pet (
    person_id INTEGER,
    car_id INTEGER
);


-- Search for "sqlite3 datatypes" in your favorite search engine and go read the "Datatypes In SQLite Version 3" document. Take notes on what types you can use and other things that seem important. We'll cover more later.
-- Insert yourself and your pets (or imaginary pets like I have).

INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Angela", "Bier", 32);
INSERT INTO pet (id, name, breed, age, dead)
    VALUES (2, "Marley", "Maltese", 7, 0);
INSERT INTO pet VALUES (3, "Herman", "Maltipoo", 2, 0);
-- If you changed the database in the last exercise to not have the person_pet table then make a new database with that schema, and insert the same information into it.

-- Go back to the list of data types and take notes on what format you need for the different types. For example, how many ways can you write TEXT data.
-- CHARACTER(20)
-- VARCHAR(255)
-- VARYING CHARACTER(255)
-- NCHAR(55)
-- NATIVE CHARACTER(70)
-- NVARCHAR(100)
-- TEXT
-- CLOB

-- Write a query that finds all pets older than 10 years.
SELECT * FROM pet WHERE pet.age > 10;
-- Write a query to find all people younger than you. Do one that's older.
SELECT * FROM person WHERE person.age < 32;
SELECT * FROM person WHERE person.age > 32;
-- Write a query that uses more than one test in the WHERE clause using the AND to write it. For example, WHERE first_name = "Zed" AND age > 30.
SELECT * FROM person WHERE age > 30 AND first_name = "Angela";
--  Do another query that searches for rows using 3 columns and uses both AND and OR operators.
SELECT * FROM person WHERE age < 30 AND first_name = "Angela" OR person.first_name = "Zed";
