def ask_for_number
	hsh = { '1st' => 1, '2nd' => 2, '3rd' => 3,
		   '4th' => 4, '5th' => 5 }

	arr = []
		   
	hsh.each do |key, value|
		puts " ==> Enter the #{key} number:"
		value = gets.chomp.to_i
		arr << value
	end

	puts " ==> Enter the last number?"
	answer = gets.chomp.to_i

	if arr.include?(answer)
		puts "The number #{answer} appears in #{arr}"
	else
		puts "The number #{answer} does not appear in #{arr}"
	end

end

ask_for_number