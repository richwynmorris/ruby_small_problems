def cleanup(str)
	alphabet_char = ('a'..'z').to_a
	up_alphabet_char = ('A'..'Z').to_a
	spaces = (' ')

	arr = str.chars

	arr.map! do |letter|
		if alphabet_char.include?(letter) || up_alphabet_char.include?(letter) || spaces.include?(letter)
			letter
		else
			letter = ' '
		end
	end

	arr.join.squeeze(' ')

end

p cleanup("---what's my +*& line?") == ' what s my line '
