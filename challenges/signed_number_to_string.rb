# In the previous exercise, you developed a method that converts non-negative numbers to strings. 
# In this exercise, you're going to extend that method by adding the ability to represent negative
# numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as 
# Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string
#  from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'


def signed_integer_to_string(number)

	conversion = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
				  6 => '6', 7 => '7', 8 => '8', 9 => '9' }

	result = number.abs.digits.reverse.map do |num|
		conversion[num]
	end.join

	if number > 0
		result.prepend('+')
	elsif number < 0
		result.prepend('-')
	else
		result
	end

end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'