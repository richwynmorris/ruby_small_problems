# PROBLEM
# ------------------------
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# Computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# TEST CASES
# ------------------------
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Questions?
# should the method return the sum or print the sum?

# DATA STRUCTURE
# Input: integer
# method: define method as multisum and intialize the parameter 'num' as part of the method.
#         intiallize an variable(arr) and assign it the values of 1 - 'num' using the range method.
#         the range method will return array and this will be the value assigned to the varible (arr)
#         using the .select! method on arr the method will return all the values that are mutliples of 3 and 5.
#         The sum method will then be invoked on arr and returned. 
# output: integer

def multisum(num)
  arr = (1..num).to_a

  arr.select! do |num|
    num % 3 == 0 || num % 5 == 
  end

  return arr.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)