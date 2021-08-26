=begin

# Write a method that takes a string, and returns a new string in which every 
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, 
# and whitespace should not be doubled.

# double_consonants('String') == "SSttrrinngg"
# double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# double_consonants("July 4th") == "JJullyy 4tthh"
# double_consonants('') == ""

Mental model:
- split the string into characters
- iterate through the string using map!.
- if the letter ['bcdfghjklmnpqrstvwzy']
- letter * 2
- else
- letter
string.join

Algorithm:
- define a method called double_consonants with one paramter string.
- letters = string.chars
- invoke map! method and pass each element to the block
- check the condition
- letters.join

=end

def double_consonants(string)

	letters = string.chars

	letters.map! do |letter|
		if letter.downcase.match? (/[bcdfghjklmnpqrstvwzy]/)
			letter * 2 
		else
			letter
		end
	end

	letters.join
end
			
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""