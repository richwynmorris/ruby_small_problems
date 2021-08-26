# Problem
# You've just discovered a square (NxN) field and you notice a warning sign. The sign states that there's a single bomb in 
# the 2D grid-like field in front of you.

# Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine. The mine is 
# represented as the integer 1 in the 2D array. Areas in the 2D array that are not the mine will be represented as 0s.

# The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index, and the 
# second element is the column index of the bomb location (both should be 0 based). All 2D arrays passed into your 
# function will be square (NxN), and there will only be one mine in the array.

# Examples:
# mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) => returns [0, 0]
# mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) => returns [1, 1]
# mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) => returns [2, 1]

# Input: 3 arrays, with 3 integers in each array, either 1 or 0.
# Output: array with the row and column where 1 is located.
# Rules: Only one mine in the array. 

# Mental Model
# iterate through the arrays and return the index of the array that contains 1.
# push return to row.
# iterate through the returned array and return the index of the integer 1
# push the return to column.
# format row and column into array 


#  Algorithm: 
#           define a method called mineLocation with one parameter, field.
#           iterate through field with each_with_index. If within the block,
#           any array.include?(1) assign row = index
#           iterate through through field[row] each_with_index if index == 1
#           assign column = index
#           format row and column into an array. [] 
  
def mineLocation(field)
  row = 0
  column = 0
  field.each_with_index do |array, index|
    row = index if array.include?(1)
  end

  field[row].each_with_index do |num, index|
    column = index if num.eql?(1)
  end
  [row, column]
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) #=> returns [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) #=> returns [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) #=> returns [2, 1]



                

