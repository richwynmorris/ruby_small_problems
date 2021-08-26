def stringy(num)
	stringy_str = ''

	if num.even?
		div_num = num / 2
		div_num.times do
			stringy_str << '10'
		end
	else 
		div_num = (num - 1) / 2
		div_num.times do
			stringy_str << '10'
		end
		stringy_str << '1'
	end
	stringy_str 
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# -------------------------------------

# alternative method
def stringy(num)

	stringy_str = ''

	num.times do |index|
		if index.odd?
			stringy_str << '0'
		else index.even?
			stringy_str << '1'
		end
	end
	stringy_str
end

puts stringy(9)