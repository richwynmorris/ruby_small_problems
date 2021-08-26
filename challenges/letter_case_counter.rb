=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters, 
one the number of characters that are uppercase letters, 
and one the number of characters that are neither.

Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


Mental Model:
- initalize a hash wirh lowercase, uppercase and neither
- string.chars
- iterate over the string and if the current letter matches uppercase- regex, send to uppercase hash
- if matches lowercase, send to the lowercase hash- regex, if letter matches regex 0-9, send to neither
- if it matche anythign that isn't a letter, regex.
- return hash

Algorithm:
-Initalize a hash called results with 3 key-value pairs.
- letters - string.chars
- letters.each
- check the letter. add 1 to the appropriate hash
- return hash.
=end

def letter_case_count(string)

	results = { lowercase: 0, uppercase: 0, neither: 0 }

	letters = string.chars

	letters.each do |character|
		if character.match? (/[a-z]/)
			results[:lowercase] += 1
		elsif character.match? (/[A-Z]/)
			results[:uppercase] += 1
		else
			results[:neither] += 1
		end
	end

	results

end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }