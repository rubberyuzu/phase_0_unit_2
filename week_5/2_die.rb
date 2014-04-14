# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: array of strings
# Output: sides=> the length of the array, roll => random item of the array
# Steps: initialize the class => define sides => define roll


# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(@labels.length)]
  end
end



# 4. Refactored Solution


class Die
  def initialize(labels) @labels = labels end
  def sides() @labels.length end
  def roll() @labels[rand(@labels.length)] end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides == 6
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll) 
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)
['A', 'B', 'C', 'D', 'E', 'F'].include?(die.roll)



# 5. Reflection 
# It was really fun writing this code.
# I think Im getting familiar with classes in Ruby.



