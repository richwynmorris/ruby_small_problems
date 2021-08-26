def calculate_square_meters(length, width)
	square_meters = (length * width).round(2)

	square_feet = (square_meters * 10.7639).round(2)

	puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)." 
end

puts "Enter the length of the room in meters:"
length_answer = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width_answer = gets.chomp.to_i

calculate_square_meters(length_answer, width_answer)