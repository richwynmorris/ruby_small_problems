def calculate_retirement(current_age, retirement_age)
	years_to_work = retirement_age - current_age

	retirement_year = Time.now.year + years_to_work

	puts "Its #{Time.now.year}. You will retire in #{retirement_year}"
	puts "You only have #{years_to_work} years of work to go!"
end

puts "What is your age?"
age_answer = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_answer = gets.chomp.to_i 

calculate_retirement(age_answer, retirement_answer)