# PEDAC - PROBLEM
# ----------------
# Write a method that returns true if its integer argument is palindromic, 
# false otherwise. A palindromic number reads the same forwards and backwards

# EXAMPLES
# ----------------
# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# DATA STRUCTURE
# ----------------
# input: interger
# method: determine if the number order is the same forwards as it is backwards
# convert the number to a string, reverse it, convert to an integer , compare and 
# return
# output: boolean(true or false)


def palindromic_number?(num)
	str = num.to_s

	num == str.reverse.to_i
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5) 