# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: numeber==answer, guess; number
# Output: solved? => t/f, guess => low/high/correct
# Steps: initialize GuessingGame with an answer, define solved? and guess with a number input


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guessed)
  	@guessed = guessed
  	if @guessed == @answer
  	    return ":correct"
  	elsif  @guessed > @answer
  		return ":high"
    elsif @guessed < @answer
    	return  ":low"
    end
  end
  def solved?
  	if @guessed == @answer
  		return true 
  	else
  		return false
  	end
  end
end




# 4. Refactored Solution

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





# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)
game.guess(20) == ":high"
game.guess(3) == ":low"
game.guess(10) == ":correct"
game.solved? == true



# 5. Reflection 
# I learned how to use  instance values in this challenge. 
# I think I still have to familialize myself with Ruby classes.


