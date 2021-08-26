def letter_percentages(str)

	percentages = { lowercase: 0, uppercase: 0 , neither:0 }

	str_arr = str.chars

	str_arr.each do |letter|
		if letter.match? (/[^a-z,A-Z]/)
			percentages[:neither] += 1
		elsif letter.eql?(letter.downcase)
			percentages[:lowercase] += 1
		elsif letter.eql?(letter.upcase)
			percentages[:uppercase] += 1
		end
	end

	percentages.transform_values! do |v| 
		result = (v.to_f / str_arr.length * 100).to_f
		if result == result.to_i
			v = result.to_i
		else
			v = result.round(2)
		end
	end

	percentages

end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')
