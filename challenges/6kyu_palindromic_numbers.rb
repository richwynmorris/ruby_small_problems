# A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

# 2332
# 110011
# 54322345

# You'll be given 2 numbers as arguments: (num,s). Write a function which returns an array of s number of numerical palindromes that come after num. If num is a palindrome itself, it should be included in the count.

# Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.

# For this kata, single digit numbers will NOT be considered numerical palindromes.

# palindrome(6,4) => [11,22,33,44] # 4 numbers that come after 6 that are palindromes
# palindrome(59,3) => [66,77,88]  # 3 integers in an array after the integets of 59
# palindrome(101,2) => [101,111] //
# palindrome("15651",5) => "Not valid" not valid is any of the arguments are strings. 
# palindrome(1221,"8") => "Not valid" 

# input: two integers, the first is the starting number and the second is the number of palindromes that should be found
# output: an array containing the specified amoutnf of numerical palindromes in the array.
# Rules: if any of the arguments are strings, return not valid.
  

# Algorithm:
# return 'not valid' if num or s is a string.
# initalise the local variable results with an empty array.
# loop do
#   break if array.length == s
  
#   is num a palindrome? 
#      - num.digits == num.digits.reverse
#      push the num to results
  
#   add 1 to the num
  
# end 

# return the results

def palindrome(num, s)
  return 'Not valid' if num.class == String || s.class == String || num < 0 || s < 0
  result = []
  until result.length == s
    result << num if num == num.to_s.reverse.to_i && num > 9
    num += 1
  end
  result
end 
  

p palindrome(6,4) == [11,22,33,44] # 4 numbers that come after 6 that are palindromes
p palindrome(59,3) == [66,77,88]  # 3 integers in an array after the integets of 59
p  palindrome(101,2) == [101,111] 
p palindrome("15651",5) == "Not valid" #not valid is any of the arguments are strings. 
p palindrome(1221,"8") == "Not valid" 
         