def reverse_words(str)
	words = str.split

	words.map do |word| 
		if word.length > 5
			word.reverse! 
		end
	end 

	return words.join(' ')
end

puts reverse_words('Launch School')