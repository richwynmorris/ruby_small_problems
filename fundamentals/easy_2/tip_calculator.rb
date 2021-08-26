def calculate_tip(bill, percentage)
	tip_amount = (bill / 100) * percentage
	total_amount = bill + tip_amount
	puts "The tip is £#{format('%.2f', tip_amount)}"
	puts "The total is £#{format('%.2f', total_amount)}"
end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

calculate_tip(bill, percentage)