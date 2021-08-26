# PROBLEM
# -------------
# Write a method that takes an integer, 
# and converts it to a string representation.

# TEST CASES
# -------------
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# QUESTIONS
# -------------

# Input: num
# output: string
# rules: You may not use any of the standard conversion methods 
# available in Ruby, such as Integer#to_s, String(), 
# Kernel#format, etc. You may, however, use integer_to_string 
# from the previous exercise.

# DATA STRUCTURE
# -------------
# - intialize hsh with key value pairs
# - define previous method integer_to_string to
#   incorporate into to new solution
# - define a new method signed_integer_to_string
#   with the paramter of num
# - intialize a case method and assign the variable num
#   to the method.
# - when the num is less then zero concat a '-' to the return
#   of integer_to_string method
# - when num is greater than zero concat a '+' to the return
#   of integer_to_string method
# - else just return the value of integer_to_string method 




INTEGERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
			'6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def integer_to_string(int)
	new_hsh = INTEGERS.invert

	numbers = int.digits.reverse

	numbers.map! do |num|
		new_hsh[num]
	end

	numbers.join
end


def signed_integer_to_string(num)

	if num > 0
		"+" + "#{integer_to_string(num)}"
	elsif num < 0
		"-" + "#{integer_to_string(-num)}"
	else 
		integer_to_string(num)
	end

end

p signed_integer_to_string(4321) 
p signed_integer_to_string(-123) 
p signed_integer_to_string(0)
