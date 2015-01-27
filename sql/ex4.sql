INSERT INTO person (id, first_name, last_name, age)
    VALUES (1, "Angela", "Bier", 32);
INSERT INTO pet (id, name, breed, age, dead)
    VALUES (2, "Marley", "Maltese", 7, 0);
INSERT INTO pet VALUES (3, "Herman", "Maltipoo", 2, 0);


INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);


INSERT INTO person_pet (person_id, pet_id) VALUES (2,2);
INSERT INTO person_pet VALUES (2,3);
