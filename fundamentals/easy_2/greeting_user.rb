def yell_back?(user)
	if user.chars.last == '!'
		puts "HELLO #{user.upcase}. WHY ARE WE SCREAMING?"
	else
		puts "Hello #{user}."
	end
end

puts "What is your name?"
answer = gets.chomp

yell_back?(answer)
