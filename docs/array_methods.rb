+
#[2, 6, 8] + [ 9, 12, 13] => [2, 6, 8, 9, 12, 13]

<<
#[12, 4, 13, 6] << 45  ==> [12, 4, 13, 6, 45]

==
#[1, 23, 45] == [1, 23, 45]  ==> true

[]
# array = Array.new  ==>  []

[]=
# array1 = [1,3,4,5,6]
# array1[2] ==> 4

collect(!) (aka map(!))
# an_array = [1,2,3,6,5,6]
# another_array = Array.new
# an_array.collect { |a| another_array << a * 2 }
# another_array
#==> [2,4, 6, 12,10,12]


compact(!)
# array_blanks = [1,3, nil,1, nil]
# array_blanks.compact!
#==> [1,3,1]

each
# ary = [1,2,3,4,5]
# ary.each do |each_a|
# 	puts each_a
# end
#==>
#1
#2
#3
#4
#5


empty?
# new_array = [1,2,3]
# new_array.empty? ==> false


index
# [20,45,60].index(45) ==> 1

first
# array = [40,3,4,6]
# array.first ==> 40

flatten(!)
# array1 = [4, 12, 34, [45, 56]]
# array1.flatten! ==> [4,12,34,45,56]

include?
# array2 = [ 32, 12, 56]
# array2.include?(32) ==> true


join
#comic_book_guy_words = %w(worst episode ever) ==> ["worst", "episode","ever"]
#comic_book_guy_words.join('!') ==>"worst!episode!ever!"

last
# array2 = [ 32, 12, 56]
# array2.last ==> 56

length (aka size)
# array2 = [ 32, 12, 56]
# array2.length ==> 3

pop
# array2 = [ 32, 12, 56]
# array2.pop ==> 56

push
# array3 = [ 13, 32, 34, 12, 56]
# array3.push(12) ==> [12, 13, 32, 34, 12, 56]

reject(!)
# strange_array = ['dog', 'cat', 1, 'boo', 4, 5, 6]
# strange_array.reject{|thing| thing.is_a?String}  ==> [1, 4, 5, 6]


reverse
# strange_array = ['dog', 'cat', 1, 'boo', 4, 5, 6]
# strange_array.reverse ==> [6, 5, 4, 'boo', 1, 'cat', 'dog']

select(!)
# strange_array = ['dog', 'cat', 1, 'boo', 4, 5, 6]
# strange_array.select {|a| a.is_a?String} ==> ['dog', 'cat', 'boo']

shift
# strange_array = ['dog', 'cat', 1, 'boo', 4, 5, 6]
# strange_array.shift ==> ['cat', 1, 'boo', 4, 5, 6]

shuffle
# array_shuf = ['cat', 1, 'boo', 4, 5, 6]
# will be random, example return ==> [5, "boo", 4, 6, "cat", 1]

sort(!)
# array4 = [4, 2, 3]
# array4.sort ==>  [2, 3, 4]

sort_by(!)
# array = []
# john = {:name => "john", :age => 23}
# tom = {:name => "tom", :age => 45}
# adam = {:name => "adam", :age => 3}
# array.push(john, tom, adam)
# guys = array.sort_by do |guy| guy[:age]
# end
# puts guys ==> [{:name=>"adam", :age=>3}, {:name=>"john", :age=>23}, {:name=>"tom", :age=>45}]

uniq(!)
# array_u = [1, 4, 6, 7, 4, 4, 1, 7]
# array_u.uniq ==> [1, 4, 6, 7]

unshift
# array_u = [1, 4, 6, 7, 4, 4, 1, 7]
# array_u.unshift(34) ==> [34, 1, 4, 6, 7, 4, 4, 1, 7]


Enumerable
all?
any?
detect
each_with_index
grep
group_by
inject
max
max_by
member?
min
min_by
partition
reduce

String
*
+
<<
=~
[]
[]=
capitalize(!)
chomp(!)
downcase(!)
each_line
empty?
gsub(!)
include?
sub(!)
to_i
to_f
to_sym


Object
class
inspect
instance_of?
is_a?
kind_of?
methods
nil?
respond_to?
send
tap

Hash
[]
[]=delete
each
each_key
each_value
empty?
fetch
has_key?
has_value?
include?
invert
keep_if
key
keys
length
merge(!)
reject(!)
select(!)
values

Range
nested_array =