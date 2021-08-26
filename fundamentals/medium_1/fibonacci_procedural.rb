def fibonacci(nth)
	if nth < 2
		return nth
	else
		first_num = 0

		second_num = 1

		current_fb = first_num + second_num

		3.upto(nth) do
			first_num = second_num

			second_num = current_fb

			current_fb = first_num + second_num
		end

		current_fb
	end

end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001)