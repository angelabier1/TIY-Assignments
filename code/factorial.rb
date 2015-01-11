def factorial(num)  
  (1..num).inject(1) {|a, b| a * b} # the "1" initial value allows it to work for 0  
end  

puts factorial(20)
puts factorial(45)