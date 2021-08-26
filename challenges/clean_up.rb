# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic 
# characters, write a method that returns that string with all of the non-alphabetic characters 
# replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only 
# have one space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# Input: string with a range of characters
# Output: a string with the non-alphabetical character removed. If there are two spaces, one should be deleted.
# Mental model:
# Iterate through the string and is if the character is alphabetical, keep it, else replace it with a space
# iterate through the string again and if the current character is a space and the chracter before it is also
# a space then delete the current character. 

def cleanup(string)
	results = []

	array_of_chars = string.chars.map do |char|
		if char.match? (/[a-z]/)
			char
		else
			' '
		end
	end


	array_of_chars.each_with_index do |char, index|
		if char.match? (/[a-z]/)
			results << char
		elsif char.eql?(' ') && array_of_chars[index + 1] != ' '
			results << char
		else
			next
		end
	end

	results.join
end

p cleanup("---what's my +*& line?") == ' what s my line '


# alternative:

def cleanup(string)

	string.gsub!(/[^a-z]/i, ' ').squeeze(' ')

end

p cleanup("---what's my +*& line?") == ' what s my line '