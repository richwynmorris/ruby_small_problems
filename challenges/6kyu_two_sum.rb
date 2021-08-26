

# Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple like so: (index1, index2).

# For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

# The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

# Based on: http://oj.leetcode.com/problems/two-sum/

# twoSum [1, 2, 3] 4 === (0, 2)

#Input: array of integers, target.
#Output: positions of itegers in array that add up to given target
# Rules: 
# Mental Model
# iterate through the array and add index 0 to index 1
# if the number == to the target, return the index position in a tuple


#Algorithm:
# define a method called two_sum with two parameters, numbers, target
# initialise a variable called index_1 = 0
# initialize a variable called index_2 = index_1 + 1
# outterloop
# break if numbers[index_1] == nil
# innerloop
# break the innerloop if numbers[index2[] == nil
# if numbers[index1] + numbers[index_2] == target
#    (index_1, index_2)
# else index_2 += 1
# add 1 to index_1
# reset index2 to index1 + 1

def two_sum(numbers, target)
  index1 = 0
  index2 = index1 + 1
  
  loop do
    break if numbers[index1] == nil
    loop do
      break if numbers[index2] == nil
      if numbers[index1] + numbers[index2] == target
        return [index1, index2]
      else 
        index2 += 1
      end
    end
    index1 += 1
    index2 = index1 + 1
  end
  
end

 p two_sum([1, 2, 3], 4)
p two_sum([1234, 5678, 9012], 14690)