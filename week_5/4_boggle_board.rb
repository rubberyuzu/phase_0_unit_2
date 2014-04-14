# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode



# Initial Solution
 def create_word(board, coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution
# I dont think I can make this any easier.


# DRIVER TESTS GO BELOW THIS LINE

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?
# Reflection 
# I'm still not very familiar with the map method, but
# I learned how to access the nested arrays.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# access the array as an element

# Initial Solution
def get_row(board, row)
	board[row]
end

# Refactored Solution
def get_row(board, row) board[row] end


# DRIVER TESTS GO BELOW THIS LINE
get_row(boggle_board,1) == ["i","o","d","t"]

# Reflection 
# I'm not very sure if I'm doing the right thing, as I feel this is too simple...


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# push each element into an empty array

# Initial Solution
def get_col(board, col)
	array = []
	board.each {|a|
      array << a[col]
	}
	p array
end


# Refactored Solution
def get_col(board, col)
	array = []
	board.each {|a|  array << a[col] }
	p array
end


# DRIVER TESTS GO BELOW THIS LINE
get_col(boggle_board, 1) ==["r","o","c","a"]

# Reflection
# I think I could have refacored this code better. I feel this is too long.
# I will review others' solutions later.