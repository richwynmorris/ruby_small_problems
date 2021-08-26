# Problem

# Complete the solution so that it strips all text that follows any of 
# a set of comment markers passed in. Any whitespace at the end of the 
# line should also be stripped out. 

#Example:
# Given an input string of:

# apples, pears # and bananas
# grapes
# bananas !apples

# The output expected would be:

# apples, pears
# grapes
# bananas

# input: string as an argument and array of markers
# output: new string with comments after marker stripped out. 

# Rules: 
# Explicit: Any whitespace at the end of the string must be removed. 
# Implicit: a new line ('\n') indicates the end of the comment section.

# Data structure: array = input.chars/each_with_index/loop/slice!/join.


def solution(input, markers)

	array = input.chars

	array.each_with_index do |character, index|
		one_ahead = index + 1 
		if markers.include?(character)
			loop do
				break if array[one_ahead] == "\n" || one_ahead == array.length
				one_ahead += 1
			end
			array.slice!((index -1)..(one_ahead -1))
		end
	end

	array.join

end


p solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])

          