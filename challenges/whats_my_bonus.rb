
=begin
What's my Bonus?

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.

=end

def calculate_bonus(bonus, boolean)
  return bonus / 2 if boolean == true
  0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000