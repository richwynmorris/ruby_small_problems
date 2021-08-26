# Problem

# Complete the function that

#     accepts two integer arrays of equal length
#     compares the value each member in one array to the corresponding member in the other
#     squares the absolute value difference between those two values
#     and returns the average of those squared absolute value difference between each member pair.

# Input: two arrays of equal length, each array contains integers.
# Output: an integer that is the average (total devided by number in array) of the difference between the corresponding index values in each array.
# Rules:
       # must return an integer

# Mental model:
  # iterate through array 1 with the each_with_index method. return the value of the difference between array 1, object 0 
  # and array 2 object, then square that number.

  # once transforming the values of array 1, invoke the sum method to add them and then divie by the length of the array.

  # Algorithm:
  # define the method solution with tow parameters, arr1 and arr 2
  # intalize local variable square_numbers and assign and empty array
  # call the each_with_index method and pass each elements in the block
  # intialize variable char_2 = arr2[index]
  # compare the difference between char and arr2[index] (char - char_2).abs. and assign 
  # value to variable difference.
  # push difference.pow(difference) to square_numbers
  # square_numbers.sum / square_numbers.length


def solution(arr1, arr2)
  square_numbers = []

  arr1.each_with_index do |num, index|
    num_2 = arr2[index]
    difference = (num - num_2).abs
    square_numbers << difference * difference
  end

  square_numbers.sum.to_f / square_numbers.length.to_f

end 

p solution([1, 2, 3], [4, 5, 6])