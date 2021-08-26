
=begin
Write a program that prompts the user for two positive integers, and then prints the results 
of the following operations on those two numbers: addition, subtraction, product, quotient, 
remainder, and power. Do not worry about validating the input.

Example

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end

def arithmatic_generator

  puts "==> Enter the first number:"
  first = gets.chomp.to_i

  puts "==> Enter the second number:"
  second = gets.chomp.to_i

  plus = first + second
  minus = first - second
  multiply = first * second
  divide = first / second
  modulo = first % second
  square = first ** second

  results = [plus, minus, multiply, divide, modulo, square]

  operators = ['+',  '-',  '*', '/', '%', '**']

  index = 0

  loop do
    break if operators[index] == nil
    puts "==> #{first} #{operators[index]} #{second} = #{results[index]}"
    index += 1
  end

end

arithmatic_generator