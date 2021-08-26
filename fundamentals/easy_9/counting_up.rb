def sequence(num)

	arr = []

	if num > 0
		1.upto(num) { |num| arr << num } 
		arr
	elsif num < 0
		num.upto(0) {|num| arr << num}
		arr
	end

end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-6)