

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains
# the product of each pair of numbers from the arguments that have 
# the same index. You may assume that the arguments contain the same number of elements.

# Examples:

# multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list(arr1, arr2)

  results = []

  arr1.each_with_index do |num, index|
    results << arr1[index] * arr2[index]
  end

  results

end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]