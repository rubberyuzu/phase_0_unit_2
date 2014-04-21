# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
 # initialize the class
 # define three methods
 # create_word takes board and coords
 # refer to each coord and get each letter, combine them
 
 # get_row takes board and row

 # get_col takes board and column


# 3. Initial Solution
class BoggleBoard
  
  def initialize(board)
  	@board = board
  end
 
  def create_word(coords)
  	array =[]
    coords.each{|coord| array << @board[coord.first][coord.last]}
    array.join("")  
  end

  def get_row(row)
    @board[row]
  end

  def get_col(col)
  	array2 =[]
    @board.each{|row| array2<<row[col]}
    array2
  end

  # def get_diagonal(coord1, coord2)
  #   tilt=(coord1.last-coord2.last)/(coord1.first-coord2.first)
  #   if tilt==1||tilt==-1 #seihoukei

  #   elsif tilt>0 || tilt<0#chouhoukei
  #   	@board[coord1.first][coord1.last]+@board[coord2.first][coord2.last]
  #   else 
  #   #error
  #   end

  end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
class BoggleBoard

  def initialize(board) @board = board end
  
  def create_word(coords)
  	array =[]
    coords.each{|coord| array << @board[coord.first][coord.last]}
    array.join("") 
  end

  def get_row(row) @board[row] end

  def get_col(col)
  	array2 =[]
    @board.each{|row| array2<<row[col]}
    array2
  end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

def assert
	raise "Assertion Failed!" unless yield
end
boggle_board = BoggleBoard.new(dice_grid)
assert{boggle_board.is_a? BoggleBoard}
assert{BoggleBoard.is_a? Class}
assert{dice_grid[1][2]="d"}

# implement tests for each of the methods here:
assert{boggle_board.create_word([[1,2],[1,1],[2,1],[3,2]]) == "dock" }
assert{boggle_board.get_row(1) == ["i", "o", "d", "t"]}
assert{boggle_board.get_col(0) == ["b","i","e","t"]}

# 5. Reflection 
# I think I got a good understanding of how to access 2-dimensional arrays.
# I think I'm getting more and more familiar with using assert methods in driver tests.
# I could not solve BONUS question so I will review others' solutions. 

