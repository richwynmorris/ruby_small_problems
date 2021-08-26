def fibonacci_last(nth)
	if nth < 2
		return nth
	else
		first_num = 1

		second_num = 1

		fib_arr = [first_num, second_num]

		3.upto(nth) do
			fib_arr = [fib_arr.last, (fib_arr.first + fib_arr.last) % 10]
		end

		fib_arr.last
	end

end

p fibonacci_last(0)
p fibonacci_last(2)
p fibonacci_last(3)
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4


def fibonacci_last_instant(nth)
	if nth < 2
		return nth
	else
		if nth > 59
			fib_pattern_index = nth % 10
		else 
			fib_pattern_index = nth
		end 

		fib_arr = [1, 1]

		fib_pattern = [0,1]

		3.upto(59) do
			fib_pattern << fib_arr.last
			fib_arr = [fib_arr.last, (fib_arr.first + fib_arr.last)]
		end

		fib_pattern[fib_pattern_index] % 10

	end

end


p fibonacci_last_instant(15) 		# -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last_instant(123456789) # -> 4