# PROBLEM
#----------
# Write a method that determines and returns the ASCII 
# string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of 
# every character in the string. 
# (You may use String#ord to determine the ASCII value of a
#  character.)

# TEST CASES
# -----------
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# Questions?
# -------------
# should the return value be a sting or an integer?

# input: string
# rules: you can use the .ord method
# output: integer

# Algorithim
# define the method ascii_value with one parameter str.
# str when assigned an arguement should be passed to the method.
# arr should be intialized as a local variable and be assigned the
# return value of str with the .chars method invoked upon it.
# .map! should be invoked on the method and each element should be 
# transformed using the .ord method. 
# after arr has been transformed with its new integer values. arr should 
# return the value of the .sum method after it has been called by arr.

def ascii_value(str)
	arr = str.chars

	arr.map! do |element|
		element.ord
	end

	arr.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
