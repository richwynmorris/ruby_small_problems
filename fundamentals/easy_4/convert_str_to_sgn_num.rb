# PROBLEM
# --------------------

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# The String may have a leading + or - sign; if the first character is a +, your method should 
# return a positive number; if it is a -, your method should return a negative number. 
# If no sign is given, you should return a positive number.



INTEGERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
			'6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)

	arr = str.chars

	digits = arr.map do |char|
		INTEGERS[char]
		end

	digits.inject(0){|accum, num| accum * 10 + num}

end 

	
def string_to_signed_integer(str)
	if str[0] == '+'
		puts +string_to_integer(str[1..-1])
	elsif str[0] == '-'
		puts -string_to_integer(str[1..-1])
    else
    	puts string_to_integer(str)
	end
end 

string_to_signed_integer('+570')