# Problem:

# write a method/one argument post -int/ return sum of digits. 

# input = integer
# output = sum of digits 
# example 23 = [2,3]: 2 + 3 = 5
# data structure =  int/digits/sum.
# Algorithm:
# def a method called sum with one parameter, num

# 	initialize a local variable called array_of_digits and 
# 	assign it the value of num after invoking the digits method.

# 	array_of_digits to call the sum method. 

# 	return the result.

def sum(num)

	array_of_digits = num.digits

	array_of_digits.sum

end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


