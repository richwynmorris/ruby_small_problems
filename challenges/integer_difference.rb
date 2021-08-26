#Problem

# Write a function that accepts two arguments: an array/list of integers and another integer (n).

# Determine the number of times where two integers in the array have a difference of n.

# For example:

# [1, 1, 5, 6, 9, 16, 27], n=4  -->  3  # (1,5), (1,5), (5,9)
# [1, 1, 3, 3], n=2             -->  4  # (1,3), (1,3), (1,3), (1,3)

# Input: an array of integers, a num for difference
# Output: an integer that represents the number of elements that have the difference 
# passed in as the argument.
# Rules: must return an integer

# Mental Model
# iterate through the array and if current number - the next number == n or the next number - current number == n
# add one to the result.

def int_diff(arr, n)
   result = 0
  
   return 0 if arr.empty?

   arr.each_with_index do |num, index|
       if index == arr.length - 1
         return result
       else
         step_ahead = index + 1
         loop do 
           break if step_ahead == arr.length 
            result += 1 if arr[step_ahead] - num == n || num - arr[step_ahead] == n
            step_ahead += 1
         end
       end
  end
end

p int_diff([1, 1, 5, 6, 9, 16, 27], 4)
p int_diff([1, 1, 3, 3], 2)
p int_diff([1,1,2,2,0,6,6], 0) 