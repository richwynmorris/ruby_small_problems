# Problem

# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] -- should be 6: [4, -1, 2, 1]

# Easy case is when the list is made up of only positive numbers and the maximum sum is the sum of the whole array. If the list is 
# made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. Note that the empty list or array is also a valid sublist/subarray.


# Input: array of integers, both postive and negative
# output: an integer that is the maximum sum of a contiguous sequence in the array.
# Rules: if all integers are negative, return 0
#        if all integers are positive, return sum

# mental model:
# iterate through the array, for each element in the array,
# loop through the sequence from index 0 and collect the result of
# from current index to one step ahead. increasing the step with every
# iteration of the loop. When the iteraction meets nil, break the loop.
# return the highest value from the results.

# Algorithm:
# define a method called max_sequence with one parameter, arr.
# intialize a local variable called results and assign it with an 
# empty array to collate the values. 
# invoke the each_with_index method and pass each element to the block
# initialize a local variable called loop_index and assign it index 
# within the block invoke a loop method 
# break if loop_index is eql to nil.
# push arr.slice(index..loop index).sum to results
# return the highest value in results.

def max_sequence(arr)
  
  return arr.sum if arr.all? { |num| num > 0 }

  return 0 if arr.all? { |num| num < 0 }

  results = []

  arr.each_with_index do |num, index|
    loop_index = index
    loop do
      break if arr[loop_index].eql?(nil)
      results << arr.slice(index..loop_index).sum
      loop_index += 1
    end
  end
  results.max
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])


