# PEDAC PROCESS 
# --------------------
# write a method that passes an array as an arguement.
# The method should select every other number that are 1st, 3rd, 5th etc
# The method should return an array with the new values. 

# TEST CASES
# -------------------
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# RULES
# -------------------
# input = array
# output = array
# Explicit requirements:
# 		Should return the same array. 
# 		items should be those indexed at even positions. 

# Algorithim
# -------------------
# method is intitalized and takes one parameter.
# The select! method should be invoked on the argument 
# and each element's index should be checked to see if it
# is .even? if it is, it will evaluate to true and be reassigned to
# the array.
# the method will return the original array with the values reassgined.

def oddities(arr)
	arr.select! { |element| arr.index(element).even? }
	p arr
end	

oddities([2, 3, 4, 5, 6])
oddities(['abc', 'def'])
oddities([123])
oddities([1, 2, 3, 4, 5, 6])