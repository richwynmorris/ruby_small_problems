# Write another method that returns true if the string passed as an argument is a palindrome, 
# alse otherwise. This time, however, your method should be case-insensitive, and it should 
# ignore all non-alphanumeric characters. If you wish, you may simplify things by calling 
# the palindrome? method you wrote in the previous exercise.

# Examples:

# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

def real_palindrome?(string)

	letters = ''

	string.downcase.chars.each do |char|
		if ('a'..'z').to_a.include?(char)
			letters << char
		elsif ('0'..'9').to_a.include?(char)
			letters << char
		end
	end

	letters == letters.reverse

end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false