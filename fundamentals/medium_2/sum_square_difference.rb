def sum_square_difference(num)
	arr = []
	1.upto(num) { |num| arr << num }
	arr_squared = arr.map do |num|
					num**2
				end
	(arr.sum)**2 - arr_squared.sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150