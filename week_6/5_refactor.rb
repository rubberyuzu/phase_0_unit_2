# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Anup.

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


class CreditCard

def initialize(card)
	@card = card
   if @card.to_s.length != 16
     return "Argument Error"
   end 
end

# Starting with the second to last digit, double every other digit until you reach the first digit

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)

# If the total is a multiple of ten, you have received a valid credit card number!

def check_card
	card_number = @card.to_s.split("")
	double_arr = []
	i = 0
	card_number.map!{|x| x.to_i}
    card_number.each do |x|
      if i%2 == 0
        double_arr << x*2
      else
        double_arr << x
      end
      i+=1
    end
    
    sum = 0
     double_arr.map!{|x| x.to_i}
    double_arr.each do |y|
      if y<10
        sum+=y
      else
        sum+= 1+ y%10
      end
    end
    
 	if sum % 10 == 0
		true
	else
		false
	end
end

end



class CreditCard

def initialize(card)

@card = card  # defining the instance variable
if @card.to_s.length !=16 # if the card length
raise ArgumentError, 'Digits not equal to 16'
end
end

def check_card # define check_card method

 card_num = @card.to_s.split("") # take number and convert to string and split it
 card_num.map!{|x| x.to_i} # converting the strings to integers inside the array
 element_index = -1 # sets the value of i, being the element place of the array
  card_num = card_num.map{|x| element_index+=1;(element_index %2 == 0 ? x*2 :x) } # looping through the array, i increases by 1 each time
  # if i is divisble by 2, then double the value at i element , else return value
  card_num = card_num.join.split("").map{|x| x.to_i} 
  # convert values to strings if a value length is greater than 2, split it. else return value
  # convert to integer


if  (card_num.reduce(:+) % 10 == 0) # if sum of array is divisible by 10 return else false
    return true
else
    return false
end
end


end



# 1. DRIVER TESTS GO BELOW THIS LINE



def assert
 raise "Assertion failed" unless yield
end
creditcard = CreditCard.new(4563960122001999)
creditcard_bad = CreditCard.new(1111111111111111)
assert{creditcard.check_card == true} 
assert{creditcard_bad.check_card == false}





# 5. Reflection 


# this was really useful for me as I could not really solve the challenge
# last week.
# my partner was so helpful, and it was good I had something to offer to him as well.
# I am getting more familiar with defining classes.

# this is anup's solution using simpler map methods.
def check_card

 card_num = @card.to_s.split("")
 card_num.map!{|x| x.to_i}
 i = -1
  card_num = card_num.map{|x| i+=1;(i %2 == 0 ? x*2 :x) }
 card_num = card_num.map{|x| (x.to_s.length > 1? x.to_s.split("") :x)}.flatten.map{|x| x.to_i}


if  (card_num.reduce(:+) % 10 == 0)
    return true
else
    return false
end
end




