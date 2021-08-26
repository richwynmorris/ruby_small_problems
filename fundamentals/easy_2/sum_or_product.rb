def sum_or_product(num, action)
	arr = (1..num).to_a

	if action.downcase == 's'
		sum_total = arr.reduce{ |sum, n| sum + n }
		puts "The sum of the integers between 1 and #{num} is #{sum_total}."
	elsif action.downcase == 'p'				
		product_total = arr.reduce{|sum, n| sum * n}
		puts "The product of the integers between 1 and #{num} is #{product_total}."
	end		
end

puts ">> Please enter an integer greater than 0:"
int_answer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

sum_or_product(int_answer, operation)
