
INTEGERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
			'6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)

	arr = str.chars

	digits = arr.map do |char|
		INTEGERS[char]
		end

	# Using the inject method
	puts digits.inject(0){|accum, num| accum * 10 + num}

	# digits.inject(0){|accum, num| accum * 10 + num}
	# digits.inject(0){|0, 1| 0 * 10 + 1} == 1
	# digits.inject(0){|1, 2| 1 * 10 + 2} == 12
	# digits.inject(0){|12, 3| 12 * 10 + 3} == 123
	# digits.inject(0){|123, 4| 123 * 10 + 4} == 1234
	# digits.inject(0){|1234, 5| 1234 * 10 + 5 } == 12345

end 

string_to_integer('12345')
