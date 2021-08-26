# PROBLEM
# Write a method that takes an Array as an argument, and reverses its elements in place; 
# that is, mutate the Array passed into this method. The return value should be the same
# Array object.

# TEST CASES
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

#INPUT: Array
# RULES: Cannot use .reverse or .reverse! 
# 			 Must mutate the original object
# OUTPUT: ARARAY (same object_id)

#PSEUDO CODE

# Initalise variable arr and assign it with the value of an array object containing either 
# string or integer objects.

# define the method reverse! with the parameter arr.

# intialize local variable index with the value of 0 

# intialize local variable reverse_index with value of arr.length - 1 

# initalize local variable arr_close with the return value of arr.dup to create a shallow copy 
# of the array object

# invoke the each method and pass each element to the block 

# the array value of the index argument passed to it should be reassigned with a copy of the 
# arr_copy element at the index arguement passed to it. 

# with each iteration index should be reassigned with an addition of one, whilst reverse_index
# should be reassigned with the value of minus 1. 



def reverse!(arr)

	index = 0

	reverse_index = (arr.length) -1  

	arr_clone = arr.dup

	arr.each do 
		arr[index] = arr_clone[reverse_index]
		index += 1
		reverse_index -= 1
	end

end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []