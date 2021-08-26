=begin 

Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!


=end

def retire
  puts 'What is your age?'
  age = gets.chomp.to_i
  puts 'What age would you like to retire?'
  retirement_age = gets.chomp.to_i

  years_of_work = retirement_age - age
  
  puts "Its 2019. You will retire in #{(2019 + years_of_work)}"
  puts "You have only #{years_of_work} years of work to go!"

end 

retire