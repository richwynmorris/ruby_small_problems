# PEDAC PROCESS
# ------------------------------
# write a method that takes two arguements. 
# The method will return true if exactly one of the two arguments are true.
# The method return false otherwise. 

# TEST CASES
# ------------------------------
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# Questions:
# Will the arguments already be invoked with the methods when they are passed 
# to the 'xor' method ?

# input: two integers with either the .odd? or .even? methods invoked.
# method should take two parameters 'first_boolean' and 'second_boolean'
# if first_boolean == true and second_boolean == false, return true
# elsif second_boolean == true and first_boolean == false, return true
# else return false
# output: returned either true or false booleans.


def xor?(first_boolean, second_boolean)
	if first_boolean == true && second_boolean == false
		return true
	elsif second_boolean == true && first_boolean == false
		return true
	else
		return false
	end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?) 