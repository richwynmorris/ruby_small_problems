def repeat(str, num)
	if num > 0
		num.times do
			puts str
		end
	else
		puts "You need to select a positive number."
	end
end

repeat('hello', 3)