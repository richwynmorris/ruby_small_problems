def crunch(str)

	all_chars = str.chars

	edited_chars = []

	index = 0

	loop do 
		break if index == str.length

		edited_chars << all_chars[index] unless all_chars[index] == all_chars[index + 1]

		index += 1

	end

	edited_chars.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''