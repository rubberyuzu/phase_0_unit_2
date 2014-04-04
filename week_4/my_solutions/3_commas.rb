# Pseudo Code
# create a method called separate_comma, which takes one argument of number
# in the method
# change the number to_string and split in each digit, putting them into an array
# reverse them in a non-destructive method, cut them into each_slice(3)(putting them into an array)
# reverse them again
# for the first array, reverse elements and join them
# for the rest of arrays, join them

# initial solution
def separate_comma(number)
	array = number.to_s.split(//).reverse!.each_slice(3).to_a.reverse
	result = []
	for i in 0..array.length-1 do
		result << array.at(i).reverse.join
	end
	result.join(",")
end

#refactoring
def separate_comma(number)
	number.to_s.split(//).reverse.each_slice(3).map{|x| x.join}.join(",").reverse
end


#testing code
number = 10000000000
puts separate_comma(number).class == String 
puts separate_comma(number).split(//).at(0) == "1"
puts separate_comma(number).length == 14
puts separate_comma(number).split(//).at(2) == ","

#reflection
# I checked if my code was working so many times using irb, and I failed so many times.
# I used many methods I learned from previous exercises, which helped me a lot in coding simply.
# I am still confused about how to use rspec, "require_relative" method never works on my
# command line. I should ask about this in office hours.
# I got familiar with at method in this challenge.
# But I still am not sure about when to use non-destructive method...
