def arithmetic_solutions
	puts "==> Enter the first number:"
	first_num = gets.chomp

	puts "==> Enter the second number:"
	second_num = gets.chomp

	op = { '+' => :+ , '-' => :-, '*' => :*, '/' => :/ , '%' => :% , '**' => :** }

	op.each do |key, value|
		answer = first_num.to_i.send(op[key],second_num.to_i)
		puts "#{first_num} #{key} #{second_num} = #{answer}"
	end
end

arithmetic_solutions