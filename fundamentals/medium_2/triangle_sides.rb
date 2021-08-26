def triangle(num_1, num_2, num_3)

	data = []
	data << num_1 << num_2 << num_3
	data.sort!

	if data[0].eql?(data[1]) && data[0].eql?(data[2])
		:equilateral
	elsif data.uniq.length == 3
		:scalene
	elsif data[1].eql?(data[2]) && data.all? { |size| size > 0 }
		:isosceles
	elsif data.uniq.length == 2 || data.any?(0)
		:invalid
	end

end


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid