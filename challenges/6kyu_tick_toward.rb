# Define a function that generates medial values between two coordinates and returns them in an array from start to target. For example, if the starting point is [1,1] and the target point is [3,2] then the shortest route from start to target would be [[1,1], [2,2], [3,2]]. The route should go only through integral coordinates.

# Note: you should move diagonally until the path from your current position to the target can be represented as a fully horizontal/vertical line.
    
# Examples:

# tick_toward([5,5],[5,7])  #=> [[5,5],[5,6],[5,7]]
# tick_toward([3,2],[4,5])  #=> [[3,2],[4,3],[4,4],[4,5]]
# tick_toward([5,1],[5,-2]) #=> [[5,1],[5,0],[5,-1],[5,-2]]
  
# Input: two arrays - first is the starting array and the second is the end
# Ouput: the a nested array which contains the array values between the starting point and the end point.

# Algorithm:
# - initial a local variable results as an empty array.
# - going_up = true
# - if first_num > second_num = going_up = false
# - loop do
#      - break if current_array == second_array
#      - if the first digit == second_array first digit
#           keep/add one/subtract if going up false
#      - elsif the second digit is the second array first digit
#      -    keep/add one/subtract if going up is false
#      - make a copy of the current array
#      - push to results
# - push second_num to results
# - return result

def tick_toward(start, target)
  results = []
  going_up_first = true
  going_up_second = true
  going_up_first = false if target[0] <= start[0] 
  going_up_second = false if target[1] <= start[1]
  current_array = start.dup
  results << start
  
  loop do
    break if current_array == target
    
    if going_up_first == true
      current_array[0] += 1 if current_array[0] != target[0]
    else
      current_array[0] -= 1 if current_array[0] != target[0]
    end
    
    if going_up_second == true
      current_array[1] += 1 if current_array[1] != target[1]
    else
      current_array[1] -= 1 if current_array[1] != target[1]
    end
    
    current_array[1] = 0 if current_array[1] >= 10
    current_array[0] = 0 if current_array[0] >= 10
    results << current_array.dup
  end
  
  results
end


p tick_toward([5,5],[5,7])  #=> [[5,5],[5,6],[5,7]]
p tick_toward([3,2],[4,5])  #=> [[3,2],[4,3],[4,4],[4,5]]
p tick_toward([5,1],[5,-2]) #=> [[5,1],[5,0],[5,-1],[5,-2]]
p tick_toward([-3,8], [5,3])