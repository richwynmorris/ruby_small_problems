def generate_consonants
	letters = ('a'..'z').to_a.concat(('A'..'Z').to_a)

	consonants = letters.each do |letter|
		letter.delete!('aeiou') && letter.delete!('AEIOU')
	end
	
end

def double_consonants(str)

	consonants = generate_consonants

	str_arr = str.chars

	str_arr.map! do |char|
		if consonants.include?(char)
			char.replace "#{char}#{char}"
		else
			char
		end
	end

	str_arr.join

end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""