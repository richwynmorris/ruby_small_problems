# We need the ability to divide an unknown integer into a given number of even parts — or at least as even as they can be. The sum of the parts should be the original value, but each part should be an integer, and they should be as close as possible.

# Example code:

# splitInteger(20, 6)   # returns [3, 3, 3, 3, 4, 4]

# Complete the function so that it returns an array of integer representing the parts. Ignoring the order of the parts, there is only one valid solution for each input to your function!

# (Also, there is no reason to test for edge cases: the input to your function will always be valid for this kata.)


# Input: two integers, first the num to be divided and the seconde the number of times an integer should go into the first num.
# Output: An array of the divisional numbers as close possible to dividing the number


# Mental Model
# create a results array to capture the integers
# if the remainder of a first num when divided by the second number is 0, push the second number the number of times from the second arguements
# else take remainder and divide it evenly over the integers in the array, from -1 to 0.
    
# Data structure:array/times/remainder/reverse_each/return array

# Alogrithm:
#   define the method splitInteger with two parameters, num and parts
#   results =[]
#   intialize the variable remainder and assign it to num % parts
#   parts.times do
#     results << num / parts
#   end
#   results.reverse!.map!
#   num += 1
#   remainder -= 1
#   break if remainer == 0  
#   results.reverse!



def splitInteger(num, parts)
  results = []
  remainder = num % parts
  parts.times do
    results << num / parts
  end
  
  results.reverse!.map! do |num|
    break if remainder == 0 
    remainder -= 1
    num += 1
  end
  
  results.reverse!
  
end

p splitInteger(20, 6)