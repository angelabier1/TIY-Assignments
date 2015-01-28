-- Select every team from the NFC North
SELECT * FROM teams WHERE teams.division = 'North' AND teams.conference = 'NFC';
-- Select every team with at least 11 wins
SELECT * FROM teams WHERE teams.wins >= 11;
-- Select every team with at least 8 wins that did not make the playoffs
SELECT * FROM teams WHERE teams.wins >= 8 AND teams.playoff=0;
-- Rename every team with fewer than 4 wins "Losers"
UPDATE teams
SET name='Losers'
WHERE teams.wins < 4;
-- Select every team that plays in a city of fewer than 5 million people, and the name of the city
SELECT teams.*, cities.name FROM teams JOIN cities ON cities.id= teams.city_id AND cities.population_2013 < 5000000;
-- Select every AFC team that plays in a city that is shrinking in population
SELECT * FROM teams JOIN cities ON teams.city_id = cities.id WHERE cities.population_2013 < cities.population_2010
AND teams.conference = 'AFC';
-- Select every city that has a team
SELECT * FROM cities INNER JOIN teams on teams.city_id = cities.id;
-- Select every state that has a team
SELECT * FROM states INNER JOIN cities ON states.id = cities.state_id INNER JOIN teams ON teams.city_id = cities.id;
-- Select every team that plays in California
SELECT * FROM teams JOIN cities ON teams.city_id = cities.id JOIN states ON states.id = cities.state_id AND states.id=5;
