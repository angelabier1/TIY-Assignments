# Select every team from the NFC North
Team.where(division: 'North').where(conference: 'NFC')
# Select every team with at least 11 wins
Team.where('wins >= 11')
# Select every team with at least 8 wins that did not make the playoffs
Team.where('wins >= 8').where(playoff: 0)
# Rename every team with fewer than 4 wins "Losers"
losers = Team.where('wins < 4')
losers do |loser| loser.name = 'Loser'
 do |n| n.save

end

end
# Select every team that plays in a city of fewer than 5 million people, and the name of the city
# Select every AFC team that plays in a city that is shrinking in population
# Select every city that has a team
# Select every state that has a team
# Select every team that plays in California
# Find the 3 smallest cities with NFL teams
# Find the number of teams in cities of between 1 million and 2 million (as of 2013)
# Find the division with the largest average number of wins
# List the names of the teams of the AFC in descending order of the size of their cities
# Change the name of the 5th largest city in New Jersey to include the phrase "like the inventor"
# Remove New Mexico and all its cities from the database with one line in the console. You can edit a line in file in
# app/models too.