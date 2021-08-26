def word_sizes(str)
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

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}