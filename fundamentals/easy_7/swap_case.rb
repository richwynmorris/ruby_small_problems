# solution 
def swapcase (str)
	arr = str.chars

	arr.each do |letter|
		if letter.eql?(letter.upcase)
			letter.downcase!
		elsif letter.eql?(letter.downcase)
			letter.upcase!
		end
	end

	arr.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'