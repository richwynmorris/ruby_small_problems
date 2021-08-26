# PROBLEM
# --------------------
# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(),
# Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing
#  and manipulating the number.

# Questions?
# -------------------
# Does the method need to return the original object?
# Should the method return a new object?
# Can you use string interpolation?

# DATA STRUCTURE
# --------------------
# input: positive ineger or sezo
# process: intialize 'hsh' of key value pairs.
# 		define method integer_to_string with one parameter 'int'
# 		intialize a local variable as 'new_hsh' and assign it the 
# 		value of 'hsh' with the .invert method invoked.
# 		convert int to an array object with .digits 
# 		pass 'int' to a .map! method and assign each key the associated 
# 		value being the str equivalent. 
# 		return the str.
# output: str

INTEGERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
			'6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def integer_to_string(int)
	new_hsh = INTEGERS.invert

	numbers = int.digits.reverse

	numbers.map! do |num|
		new_hsh[num]
	end

	return numbers.join
end

p integer_to_string(4321)

