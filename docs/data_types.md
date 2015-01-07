Data Types
===================
### `Numbers`
* **What does it mean?** Numbers can be integers or floats. Integers are numbers without decimal points and floats are numbers with decimal points
* **How do you make one?** `7` #integer `8.0` #float. 
* **Why would you want one of those?** You can use numbers to perform  arithmetic `5 + 6` or you can use floats as you would with a simple calculator `11.2 + 10.0`
* **What can you do with a number?**
```ruby
  # You can convert it into a string:
  1543.to_s #=> 1543
  

  # You can convert it into a float:
  123.to_f #=> 123.0

  # You can convert it into an integer:
  7654.46.to_i #=> 7654
  
  # You can add, subtract, divide and multiply numbers:
  567.0 - 300 #=> 267.0
  400 + 435 #=> 835
  300 / 3.0 #=> 100.0
  33 * 10 #=> 330 

  # You can get the absolute value:
  -45.abs #=> 45

```
### `Strings`
* **What does it mean?** Group of characters in a program including letters, numbers, symbols and spaces.
* **How do you make one?** `'I am a string!'` or `'I am a string with character :) and symbols #$(@*#)$'`
* **Why would you want one of those?** You can use strings for message output `puts 'Good Morning, Joe!'`
* **What can you do with a string?**
```ruby
  # You can add it to another string:
  'I like' + ' mushrooms on my pizza!' #=> I like mushrooms on my pizza!

  # You can convert it to a float:
  '123'.to_f #=> 123.0

  # You can convert it to an integer:
  '7654.46'.to_i #=> 7654
  
  # You can multiply strings:
  'Ham & Cheese ' * 3 #=> Ham & Cheese Ham & Cheese Ham & Cheese 
  
  # You can upcase, downcase and capitalize a string:
  'i want to grow up'.upcase #=> "I WANT TO GROW UP"
  'tUrn Me INto A ProPer SentencE.'.capitalize #=> "Turn me into a proper sentence"
  'STOP SHOUTING!!'.downcase #=> "stop shouting!!"
 

```

### `Array`
* **What does it mean?** Arrays are ordered, integer-indexed collections of any object.
* **How do you make one?** `array = Array.new` or `array = [1,5,12,19,20]`
* **Why would you want one of those?** Arrays provide a way to store things and access them late. You could use an array to 
keep track of students  `array = [Joe, Angela, Spencer,Kelly, Andell, Peter, Ivan, Jeff]` you can also use them to 
* **What can you do with a string?**
```ruby
  # You can convert them into strings:
  numbers = [1,2,3,6,7]
  numbers.to_s #=> "[1, 2, 3, 6, 7]"

  # You can sort an array:
  numbers.sort #=> [1, 2, 3, 6, 7]

  # You can use push to add to an array:
  numbers.push '12' => [1, 2, 3, 6, 7, "12"]
  
  # You can remove items from an array with pop:
  numbers.pop => "12"
  
  
 

```



