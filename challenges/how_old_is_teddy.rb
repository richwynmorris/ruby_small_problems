=begin


How old is Teddy?

Build a program that randomly generates and prints Teddy's age. To get the age, 
you should generate a random number between 20 and 200.

Example Output

Teddy is 69 years old!
  
=end

def teddy_age(name = 'Teddy')
  age = (20..200).to_a.sample
  puts "#{name} is #{age} years old!"
end

teddy_age('Bear')