+
[2, 6, 8] + [ 9, 12, 13] #=> [2, 6, 8, 9, 12, 13]
<<
[12, 4, 13, 6] << 45  #==> [12, 4, 13, 6, 45]
==
# [1, 23, 45] == [1, 23, 45]  ==> true
[]   #
[]=
collect(!) (aka map(!))  # an_array[1,2,3,6,5,6] an_array[1,2,3,6,5,6]
compact(!)
each          #new_array = [1, 2] newer_array = [] new_array.each{|n| newer_array << n * 5}
#newer_array = [] new_array.each{|n| newer_array << n * 5 if n > 1}
empty? ## newer_array.empty? ==> false
index  # [20,45,60].index(45) ==> 1
first
flatten(!)
include?
index
join      #comic_book_guy_words = %w(worst episode ever) ==> ["worst", "episode","ever"]
#comic_book_guy_words.join('!') ==>"worst!episode!ever!"
last
length (aka size)
pop
push
reject(!)   #strange_array.reject{|thing| thing.is_a?String}
reverse
select(!)
shift
shuffle
sort(!)
sort_by(!)
uniq(!)
unshift
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