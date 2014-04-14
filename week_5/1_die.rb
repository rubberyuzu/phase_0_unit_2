# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a positive integer
# Output: a positive integer
# Steps:
# Define a class Die
# initialize the method with one parameter
# make the parameter an instance variable
# define a method sides
# return the variable sides
# define a method roll
# return a random number from one to sides
# using a sample method


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
  end
  
  def sides
    @sides  
  end
  
  def roll
    1+rand(6)
  end
end



# 4. Refactored Solution
class Die
  def initialize(sides); @sides = sides end
  def sides() @sides end
  def roll() 1+rand(6) end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

die=Die.new(6)
# puts Die.class = Class
puts die.sides == 6
puts (1..6).include?(die.roll)
puts (1..6).include?(die.roll)
puts (1..6).include?(die.roll)


# 5. Reflection 

# At first the idea of class was kind of confusing but I think I'm getting familiar with it.
# I learned how to define method in one line! :)
# Initialize method is still not very familiar to me, so I'll work on it later this week! :)