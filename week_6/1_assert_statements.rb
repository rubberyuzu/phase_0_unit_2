# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert #defining the method "assert"
  raise "Assertion failed!" unless yield #raise the error message unless the boolean 
                                         # after the method name is right == yield
end

name = "bettysue" #assign a variable a value
assert { name == "bettysue" } # assert {true boolean} == yield
assert { name == "billybob" } # assert {false boolean} != yield

# 2. Pseudocode what happens when the code above runs
# I wrote between the code.

# 3. Copy your selected challenge here
class GuessingGame
  def initialize(answer) @answer = answer end
  def guess(guessed)
  	@guessed = guessed
  	if @guessed == @answer then ":correct" 
  	elsif @guessed > @answer then ":high"
  	elsif @guessed < @answer then ":low" end
  end
  def solved?
  	if @guessed == @answer then true else false end
  end
end

game = GuessingGame.new(10)
game.guess(20) == ":high"
game.guess(3) == ":low"
game.guess(10) == ":correct"
game.solved? == true




# 4. Convert your driver test code from that challenge into Assert Statements
game = GuessingGame.new(10)
assert{game.guess(20)==":high"}
assert{game.guess(3) == ":low"}
assert{game.guess(10) == ":correct"}
assert{game.solved? == true}


# 5. Reflection
# This challenge seemed new to me, partly because I was not very familiar with the yield
# method. I went over codecademy again and got familiar with many methods again.
# It was a great timing to reflect what I'd learned so far.
# I would like to learn more about assert and yield, and get familiar with them.



