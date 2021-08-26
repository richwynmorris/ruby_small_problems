# PEDAC 

# PROBLEM
# ------------
# Write a method that takes two strings as arguments.

# It should determine the longest of the two strings.

# Returns the result of concatenating the shorter string, 
# the longer string, and the shorter string once again.

# You may assume that the strings are of different lengths.

# EXAMPLES
# -------------
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# QUESTIONS
# -------------
# NO QUESTIONS

# DATA STRUCTURE
# -------------
# define method short_long_short and assign parameters str1 and str2.
# A conditional if statement will determine if str2's length is greater than str1
# if the statement is true then the string will be concatenated using the + operator 
# and the strings will be concatenated as str2 + str1 + str2.
# else the opposite concatenation will be returned. 

def short_long_short(str1, str2)
	if str1.length > str2.length
		str2 + str1 + str2
	else
		str1 + str2 + str1
	end
end

short_long_short('abc', 'defgh')
