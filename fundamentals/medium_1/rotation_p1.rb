# PEDAC:

# PROBLEM:
# Write a method that rotates an array by moving the first element to the end of the array. 

# EXAMPLES
# rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]


# INPUT: array 
# RULES: The original array should not be modified.
# 	   Do not use the method Array.rotate or Array.rotate! for your implementation.	
# OUTPUT: array


# PSEUDOCODE: 
# slice the second part of the array and assign it the variable arr_slice
# intialise a variable first_element and assign the value of arr at index 0
# push the first_letter to arr_slice.
# flatten arr_slice to remove the nexted array structure.



def rotate_array(arr)

	arr_slice = arr[1..-1]
	first_element = arr[0]
	arr_slice << first_element
	arr_slice.flatten

end 

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]