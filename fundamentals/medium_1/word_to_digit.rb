def word_to_digit(str)

	words_to_num = {'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
					'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8',
					'nine' => '9', 'zero' => '0'}

	words_to_num.keys.each do |word|
		str.gsub!(/\b#{word}\b/, words_to_num[word])
	end 

	str.gsub!(/(\d)\s(?=\d)/,  '\1')

end 

p word_to_digit('Please call me at five five five one two three four. Thanks.') 
