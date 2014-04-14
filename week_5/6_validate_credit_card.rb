# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:a number of 16 digits
# Output:true or false
# Steps: get all the numbers => double numbers => divide by 9 => get sum => %10 


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

def initialize(array)
	@array = array
   if @array.length != 16
     return "Argument Error"
     break
   end 
end

def check_card
	@double = @array.map {|x| x*2}
	@bynine = @double.map {|x| x%9}
	@sum = @bynine.inject{|x,y| x+y}
	if @sum % 10 == 0
		true
	else
		false
	end
end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

