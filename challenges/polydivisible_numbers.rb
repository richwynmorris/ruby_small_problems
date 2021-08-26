require 'pry'

=begin
Given a non-negative number, return the next bigger polydivisible number, or an empty value like null or Nothing.

A number is polydivisible if its first digit is cleanly divisible by 1, its first two digits by 2, its first three 
by 3, and so on. There are finitely many polydivisible numbers.

input: Number
output: The next polydivisble

=end

# def next_num(n)

#   next_number = n + 1
  
#   divisible = 1

#   loop do
#     array_of_digits = next_number.digits.reverse
#     results = []

#     array_of_digits.each_with_index do |current_number, index|
#       num_to_check = array_of_digits.slice(0..index).join.to_i
#       results << current_number if num_to_check % divisible == 0
#       divisible += 1
#     end

#     divisible = 1
    
#     if results.join.to_i > n
#       return results.join.to_i
#       break
#     else
#       next_number += 1
#     end
    
#   end
    
# end





