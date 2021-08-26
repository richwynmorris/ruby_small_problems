def word_sizes(str)
	
	str = delete_non_letters(str) 

	arr = str.split

	hsh = {}

	arr.each do |word|
		hsh[word.length] = 0
	end

	arr.each do |word|
		if hsh.key?(word.length)
			hsh[word.length] += 1
		end
	end

	hsh 

end

def delete_non_letters(str)

	letters = ('a'..'z').to_a + ('A'..'Z').to_a
	spaces = (' ')

	non_letters = str.chars.select do |letter|
					letters.include?(letter) || spaces.include?(letter)
					end

	non_letters.join

end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}