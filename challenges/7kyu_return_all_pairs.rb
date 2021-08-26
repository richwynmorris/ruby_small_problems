# You are given array of integers, your task will be to count all pairs in that array and return their count.

# Notes:

#     Array can be empty or contain only one value; in this case return 0
#     If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
#     Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

# Examples

# [1, 2, 5, 6, 5, 2]  -->  2

# ...because there are 2 pairs: 2 and 5

# [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4

# ...because there are 4 pairs: 2, 20, 6 and 2 (again)

# pairs([1, 2, 5, 6, 5, 2]) ==  2 # two pairs here 5 and 2
# pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4 # 4 pairs here, 2, 2, 20, 6, 
# pairs([0, 0, 0, 0, 0, 0, 0]) == 3 # 7 zeros here makes 3 pairs with one left over
# pairs([1000, 1000]) == 1 # 
# pairs([]) == 0 # if empty value return 0
# pairs([54]) == 0 # if one value return 0

# Input: an array of integers
# output: a count of the pairs that are in the array
# rules: is it is empty or 1, return 0
         # multiple copies of the same number create a new pair, 4 2's == 2 

# Algorithm:
# intialize a local variable called result with the integer 0 
# find the unique characters to iterate through
# count the number of times that uniq character appears in the array.
# if its an even number, divide it by two and add it two the result
# return the result.
  

def pairs(array)
  result = 0
  
  array.uniq.each do |num|
    appearences = array.count(num)
    result += (appearences / 2) 
  end
  result
end 

 p pairs([1, 2, 5, 6, 5, 2]) ==  2 # two pairs here 5 and 2
 p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4 # 4 pairs here, 2, 2, 20, 6, 
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 # 7 zeros here makes 3 pairs with one left over
 p pairs([1000, 1000]) == 1 # 
 p pairs([]) == 0 # if empty value return 0