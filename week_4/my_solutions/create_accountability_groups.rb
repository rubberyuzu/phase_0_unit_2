# U2.W4: challenge_1


# I worked on this challenge by myself

# 2. Pseudocode

# Input: an array
# Output: an array, containing arrays with 4 (or less) elements each
# Steps:
# define create_group
# shuffle the array
# each_slice(4)



# 3. Initial Solution

def create_group(array)
  
  new_array = array.shuffle
  return new_array.each_slice(4).to_a
end



# 4. Refactored Solution

def create_group(array)
  array.shuffle.each_slice(4).to_a
end







# 1. DRIVER TESTS GO BELOW THIS LINE
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]
create_group(array).length == array.length/4+1

if array.length >= 5
 for i in 0..create_group(array).length-2 do 
 puts create_group(array)[i].length == 4
 i+=1
end
else
 puts create_group(array)[0].length == array.length
end


# 5. Reflection 
# Firstly I tried to write a code which takes a number of how many times you would like to get
# the accountability groups like below, which did not work.
# I would like to figure out why.
# 
def create_group(array)
  
  new_array = array.shuffle
  return new_array.each_slice(4).to_a
end
def accountability)(array,number)
number.times{
	create_group(array)
}
end

# Also I did not use non-destructive methods at all, and don't know where to use it....




