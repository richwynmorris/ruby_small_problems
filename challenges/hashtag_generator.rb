# Problem:

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# input: string object
# output: modified string or boolean value. 

# Rules: 
#     It must start with a hashtag (#).
#     All words must have their first letter capitalized.
#     If the final result is longer than 140 chars it must return false.
#     If the input or the result is an empty string it must return fals

# Data structue:
# string to array/capitalize/push to '#str/coniditional/return result

# Algorithm:
# Define a method called generateHastag with one parameter, str. 
# intialize variable array and assign it with the return value of str.split
# initialize variable returned_str and assign with the value "#"
# iterate through array using .each, modify word to capitalize and push to returned_str. 
# if returned_string.length > 140 or == '#' return boolean value false
# else returned_str


def generateHastag(str)
	array = str.split
	returned_str = "#"
	array.each do |word|
		returned_str << word.capitalize
	end
	return false if returned_str.length > 140 || returned_str.eql?('#') 
	returned_str
end

p generateHastag(" Hello there thanks for trying my Kata")
