=begin
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that 
computes the square of its argument (the square is the result of multiplying a number by itself).

Example:

square(5) == 25
square(-8) == 64

=end

def multiply(num1, num2 = num1)
  num1 * num2
end

def square(num)
  multiply(num)
end

p square(5) == 25
p square(-8) == 64