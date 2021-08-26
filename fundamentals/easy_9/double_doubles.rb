# Solution:
def twice(num)

	num_arr = num.digits.reverse! 

	halfway_arr = []

	halfway = num_arr.length / 2

	halfway.times do
		halfway_arr << num_arr.pop
	end

	if halfway_arr.reverse == num_arr
		num
	else
		num * 2
	end

end	

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10