# The maximum sum subarray problem consists of finding the the maximum summ of a contiguous subsequence in an array of integers

# max_sequence([-2,1,-3,,4 -1, 2, 1, -5, 4])
# --- should be 6: [4, -1 , 2, 1]

# Easy case is when the array is all positive integers and the maximum sum is just the sum of the array. if all the inttegers are below 0 return 0 
# An empty array is considered to be 0. 

# max_sequence([]) == 0
# max_sequence([-2,1,-3,,4 -1, 2, 1, -5, 4]) == 6
# max_sequence([11]) == 11
# max_sequence([-32]) == 0
# max_sequence([-2,1,-7, 4, -10, 2, 1, 5, 4]) == 12
  

# Input: an array of positive or negative integers.
# output: is the highest possible sum of a subarray within the array. if it is less than 0 return 0. 

# Algorithm:
# if all the numbers >= 0 return the sum of the array
# if they are all less than zero, return 0
  
# track the highest sum of each sub array with variable called highest_subarr_sum
# outerloop that with remove the first element in the array
#    - break arr.length == 1
#    - iterate through the array with each object and its index
#    - slice from 0 to the current index and reassgin highest_subarr_sum with the sum of the slice if its greater than the current value.
# return the highest_subarr_sum
  
def max_sequence(arr)
  return arr.sum if arr.all? {|num| num >= 0}
  return 0 if arr.all? {|num| num <= 0}
  
  highest_subarr_sum = 0
  
  loop do
    break if arr.empty?
    
    arr.each_with_index do |num, index|
      slice_sum = arr.slice(0..index).to_a.sum 
      highest_subarr_sum = slice_sum if slice_sum > highest_subarr_sum
    end
  
    arr.shift
  
  end
  
  highest_subarr_sum
  
end
  
p max_sequence([]) == 0
p max_sequence([-2,1,-3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2,1,-7, 4, -10, 2, 1, 5, 4]) == 12
