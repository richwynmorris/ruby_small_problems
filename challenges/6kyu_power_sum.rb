# Some numbers have funny properties. For example:

#     89 --> 8¹ + 9² = 89 * 1

#     695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

#     46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

# Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p

#     we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is equal to k * n.

# In other words:

#     Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k

# If it is the case we will return k, if not return -1.

# Note: n and p will always be given as strictly positive integers.

# Input: an integer which represents the digits of the number and another integer with represents the starting power for the first digit.
# Output: the value which when multiplied the digits equates to the sum of the powers.
# Rules: only positive integers
#        return k if it exists, else return -1

# Algorithm:
# - initialize the local varirable digits with the the return value of n.digits.reverse.
# - iterate through digits with map and transform the number based return value of the number being being powered.
# - initialize a local variable power_sum and assign it the value of digits.sum
# - if power_sum is less than n return -1 or power_sum % n isn't equal to zero
# - divide power_sum by n 

def dig_pow(n, p)
    digits = n.digits.reverse
  
    power_sum = digits.map! do |num| 
      p += 1
      num ** (p - 1)
    end.sum
  
    return -1 if power_sum < n || power_sum.to_f % n != 0
  
    power_sum / n
end

p dig_pow(46288, 3)