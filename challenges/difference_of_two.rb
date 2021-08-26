# The objective is to return all pairs of integers from a given collection of integers that have a difference of 2.

# The result should be sorted in ascending order.

# The input will consist of unique values. The order of the integers in the input collection should not matter.
# Examples

# [1, 2, 3, 4]      -->  [[1, 3], [2, 4]]
# [4, 1, 2, 3]      -->  [[1, 3], [2, 4]]
# [1, 23, 3, 4, 7]  -->  [[1, 3]]
# [4, 3, 1, 5, 6]   -->  [[1, 3], [3, 5], [4, 6]]


# Input: array of integers
# Output: nested array of pairs that have a difference of two
# Rules:
      # The result should be in ascending order.
      # All integers will be unique.
      # order of the integers should not matter.


# Mental Model:
# I need to iterate through the array and see how many integers match the current integer by plus two. 
# I then need to return the matching integer with the current integer and format it into an
# array. 

# Data strcuture:
# sort!/each/if/include?/result

def twos_difference(lst)
  lst.sort!

  result = []

  lst.each do |num|
    if lst.include?(num+2)
      result << [num, num +2]
    end
  end

  result

end 

p twos_difference([6, 3, 4, 1, 5])
p twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56])
p twos_difference([])