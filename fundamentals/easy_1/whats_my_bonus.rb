def calculate_bonus(num, boolean)
	if boolean == true
		num / 2
	else 
		num = 0
	end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000