# Write code to answer each of the following questions. Show the code and, in a comment, its return value.
# Example:
# How many letters are in the word 'abbreviation'?
'abbreviation'.length #=> 12

# Is pi bigger than 22/7?
puts Math::PI > 22/7 #=> true

# a person who's 6'5" is how many inches tall?
puts (6*12) + 5 #=> 77


weather = "an absolutely beautiful day"
# write the shortest possible code that will print out the string "Hello! Isn't it an absolutely beautiful day today?"
puts "Hello! Isn't it " + weather + " today?" #=> "Hello! Isn't it an absolutely beautiful day today?" 

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
"3 + 2 is #{3+2}" #=> "3 + 2 is 5"
# When using string interpolation, Ruby first evaluates whatever is between the #{ }, 
# converts it into a string and then adds it back into the surrounding string.

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 4 ? 'greater' : 'less'} than four." #=> "Five is greater than four."
# Ruby evaluates whether 5 > 4 is true or false. If it is true, then 'greater' is returned, if false 'less' is returned. 
# And because of interpolation, the returned value is inserted back into the string.

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code does what it does.
"Five is #{5 > 6 ? 'greater' : 'less'} than six." #=> "Five is less than six."
#If 5 is greater than 6 is true, Ruby returns 'greater' else it returns 'less'

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English why the code what it does.
"Five is #{5 == 100 ? '' : 'not '}the same as one hundred." #=> "Five is not the same as one hundred."
# If 5 equals 100 evaluates to true, Ruby returns an empty string and if it evaluates to false, 'not ' is returned. The returned value
# is inserted into the surrounding string.

# Add a comment after the following code block showing its return value. 
# Then add a second comment explaining in English what the code does.
[ 1, 2, 3, 4, 5].collect do |n|
  n * 3
end
#=>[3, 6, 9, 12, 15]
#Array#collect is an iterates through the array and applies the code block, n * 3 to each item in the array. 

# beginning with a list of the numbers 3, -2, 7.5, and 90, make a list containing their absolute values.
[3,-2,7.5,90].map {|a| a.abs }

# Add a comment after the following code block showing its return value.
# Then add a second comment explaining in English what the code does.
[ 'David Rogers', 'Brian Gates', 'Jerry Seinfeld', 'Larry David' ].select do |name|
  name.include?('David')
end
#=>["David Rogers", "Larry David"]
#Select is running the name.include?('David') block of code on every item in the array and it is returning
#a new object that contains only the items for which the original block returns a value of 'true'. The block of 
#code is asking if "David" is included, if so, return 'true'

# create a list of the names Joe, Kelly, Spencer, Peter, Ivan, Andell, Angela, Jeff to use for the next five tasks.
a = %w{Joe, Kelly, Spencer, Peter, Ivan, Andell, Angela, Jeff}

# access the 5th name in the list
a[4]

# add my name to the end of the list
a.push 'Brian'

# make a list of the names in alphabetical order
a.sort

# make a list of the names in reverse alphabetical order
a.sort.reverse

# make a list of the names from shortest to longest
name_length = a.collect {|name| name.length}
name_length.sort

# Add a comment after the following line of code showing its return value.
# Then add a second comment explaining in English what the code does.  
%w(Joe Kelly Spencer Peter Ivan Andell Angela Jeff Brian).partition{|name| name.length == 5 }
#=>[["Kelly", "Peter", "Brian"], ["Joe", "Spencer", "Ivan", "Andell", "Angela", "Jeff"]]
#Partition method returns two arrays. The first array contains the elements for which the code block evaluated to true
#the second array contains the rest.

# Split the above list of names into a group that starts with 'J' and a group that doesn't.
%w(Joe Kelly Spencer Peter Ivan Andell Angela Jeff Brian).partition{|name| name.include?('J') }

president_birthdays = { 
    'Abraham Lincoln' => 'February 12, 1809', 
    'William Henry Harrison' => 'February 9, 1773', 
    'George Washington' => 'February 22, 1732', 
    'Ronald Reagan' => 'February 6, 1911' 
  }
# write code to access George Washington's birthday from the hash.
president_birthdays['George Washington']

# Add a comment after the following block of code showing its return value.
# Then add another comment explaining in English what the code does. 
president_birthdays.each do |key, value|
  puts "President #{key} was born on #{value}."
end
#=>President Abraham Lincoln was born on February 12, 1809.
#=>President William Henry Harrison was born on February 9, 1773.
#=>President George Washington was born on February 22, 1732.
#=>President Ronald Reagan was born on February 6, 1911.
#Each is a method that is iterating through the president_birthdays hash and string interpolation is used to inject the returned
#keys, value pairs into the code block's string.

# Imagine you were talking to someone who missed today's class (and the prework). 
# Write down how you would explain how to go about solving the next task. Then write code to solve it.
# Modify the code to print out only the Presidents born during the 18th century. 
# First you need to establish which years made up the 18th century (1701 - 1800) 
# Then, you need to select only those presidents whose birthdates fall within this time period and print the names.

## WORK IN PROGRESS
#president_birthdays.each do |key, value| 
#	puts "#{value}[-4,-1]"
#	century = '1701'..'1800'
#	if century.include?(year)
#		puts "#{key}"
#	end
# end

	



# Modify the code to print out only the President born during the 20th century.

# Add James A. Garfield (born November 19, 1831) to the hash, and modify the code (if necessary) to print out only the President born during the 20th century.

# Also add Bill Clinton (born August 19, 1946), and modify the code (if necessary) to print out the two Presidents born during the 20th century. 

# EXPERT LEVEL: modify the code to print out the Presidents in the order of their birth.

# SUPER EXPERT LEVEL: Modify the code to print out the Presidents with February birthdays in the order their birthdays occur during the month.

# SUPER DUPER EXPERT LEVEL: Print out the six Presidents in the order their birthdays occur during the year.

# Create a data structure that has the numbers from one to ten that matches the
# representation of each as a word (like 'one') with the corresponding
# representation as a numeral (like 1). 


# If you print out the names of the numbers from one to three in alphabetical order
# alongside the numeral for each, it could look like
# one (1)
# three (3)
# two (2)
# Create the same kind of print out for the numbers from one to ten.

n = 3; puts "I have #{n} pizza#{n = 1 ? '' : 's'}"
# What is the typo in the above line, and why does it have the effect that it does?
# n= 1 is the typo. Using a single = is an assignment operator and will change the value of n from 3 to 1. The assignment operator
# will always return true and therefore the 's' needed to make the sentence gramatically correct will not be returned.
# The code block needs a comparative operator in order to work as expected. 

# Fix the typo in the above line of code.
n = 3; puts "I have #{n} pizza#{n == 1 ? '' : 's'}"

