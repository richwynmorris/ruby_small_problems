SPELLING_BLOCKS = { 'B' => 'O' , 'X' => 'K' , 'D' => 'Q' , 'C' => 'P' , 'N' => 'A' , 'G' => 'T' , 'R' => 'E' ,
				    'F' => 'S' , 'J' => 'W' , 'H' => 'U' , 'V' => 'I' , 'L' => 'Y' , 'Z' => 'M' }


def block_word?(str)

	str_arr = str.upcase.chars

	str_arr.each do |letter|
		if SPELLING_BLOCKS.keys.include?(letter) && str_arr.include?(SPELLING_BLOCKS[letter])
			str = false
		elsif SPELLING_BLOCKS.values.include?(letter) && str_arr.include?(SPELLING_BLOCKS.key(letter))
			str = false
		else 
			str = true
		end
	end

	str

end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true