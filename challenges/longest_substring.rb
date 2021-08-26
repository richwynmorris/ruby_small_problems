# Problem 
# Find the longest substring in alphabetical order.

# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

# There are tests with strings up to 10 000 characters long so your code will need to be efficient.

# The input will only consist of lowercase characters and will be at least one letter long.

# If there are multiple solutions, return the one that appears first.

# Input: string of alphabetical characters
# Output: substring of the longest sequence of ordered alphabetical characters.
# Rules: 
       # Only lowercase characters
       # will be at least 1 character long.

# Mental Model:
#  iterate through each letter, if the letter ahead of it is greater, push the current letter 
# to the result, if the the letter ahead of it is less, push the result to all_results. select the max
# from all_results. 

# Algorithm:
       # define the method longest with one parameter, s. 
       # initialize the local variable all_results with an empty array
       # intialize list_of_chars with the return value of s.chars
       # call each_with_index and pass each element to the block.
       # within the block intialize the local variable result with an empty string.
       # initalize local variable next_index with the result of index + 1
       # invoke a loop method.
       # if the character at next_index >= current_index, push the next_index to result.
       # 	next_index += 1
       # current_index + =1 
       # else  all_results << result
       # end
       # invoke the max method and sort by length. 


def longest(s)
	all_results = []

	list_of_chars = s.chars

	list_of_chars.each_with_index do |char, index|

		result = ''
		next_index = index + 1 
		current_index = index
		result << char

		if current_index == list_of_chars.length - 1
			all_results = all_results.max { |a,b| a.length <=> b.length }
		else
		  loop do
		  	if list_of_chars[next_index] == nil
		  		all_results << result
		  		break
				elsif list_of_chars[next_index] >= list_of_chars[current_index]
					result << list_of_chars[next_index]
					current_index += 1
					next_index += 1
				else
					all_results << result
					break
				end
			end
		end
	end
	all_results
end


p longest('asd')