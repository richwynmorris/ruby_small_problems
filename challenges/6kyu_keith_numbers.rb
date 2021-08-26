# In recreational mathematics, a Keith number or repfigit number (short for repetitive Fibonacci-like digit) is a number in the following integer sequence:

# 14, 19, 28, 47, 61, 75, 197, 742, 1104, 1537, 2208, 2580, 3684, 4788, 7385, 7647, 7909, ... (sequence A007629 in the OEIS)

# Keith numbers were introduced by Mike Keith in 1987. They are computationally very challenging to find, with only about 100 known.

# Implement the code to check if the given number is a Keith number. Return the number number of iteration needed to confirm it; otherwise return false.

# Note: 1-digit numbers are not Keith numbers by definition
# Examples

# n = 197      # --> [1, 9, 7]

# # calculation           iteration
# 1 + 9 + 7 = 17         #    1
# 9 + 7 + 17 = 33        #    2
# 7 + 17 + 33 = 57       #    3
# 17 + 33 + 57 = 107     #    4
# 33 + 57 + 107 = 197    #    5

# As 197 is the same as the initial number, so it's a Keith number: return 5

# Another example:

# n = 196

# # calculation          iteration
# 1 + 9 + 6 = 16        #    1
# ...

# 196 is not a Keith number, so return false

# Input: integer
# Output: a boolean value of true or false

# rules: the total value sum of digits and add it to the end of the array ane loop until the sum of the digits is either a keith number or higher
  
# Algorithm:
#   - split the number into digits
#   - sum the total digits and assign to loval variable current sum
#   - we remove the first digit and append the total sum
#   - repeat until the total is the original number or highest
#   - if its equal to the original number, return true
#   - else return false
    
def is_keith_number?(num)
  return false if num < 10
  digits = num.digits.reverse
  current_sum = 0
  iteration = 0
  
  until current_sum >= num
    current_sum = digits.sum
    digits.shift
    digits << current_sum
    iteration += 1
  end
  return iteration if current_sum == num
  false
end

p is_keith_number?(197)