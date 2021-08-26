def featured(num)

	f_num = num + 1

	return "=> Invalid number" if num >= 999_999_987

	loop do 
		break if f_num % 7 == 0 && f_num.odd? && f_num.digits.uniq.length == f_num.digits.length
		f_num += 1
	end

	return f_num 

end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)