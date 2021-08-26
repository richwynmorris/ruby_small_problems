# # Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

# # It should remove all values from list a, which are present in list b.

# # array_diff([1,2],[1]) == [2]

# # If a value is present in b, all of its occurrences must be removed from the other:

# # array_diff([1,2],[1]) == [2]
    
# Problem:
# subtract the values in arr1 with the values from arr2

# Input: arr1, arr2
# Output: arr1 with the occurences of values from arr2 removed.

# Mental Model:
# create a counter with tracks the values in array2
# loop
# iterate through the arr1 and check if the current value matches arr2[counter]
# if it does, delete the value
# else next
# break if arr2[counter] == nil

  
# Algorithm:
# counter is assigned the value of 0
# loop
# BREAK IF arr2[counter] == nil
# arr1.each do
# IF value == arr[counter]
# arr1.delete(value)
# ELSE
# next
# counter += 1
  
  
def array_diff(a,b)
  counter = 0
  
  loop do
    break if b[counter] == nil
    
    a.each do |num|
      if num == b[counter]
        a.delete(num)
      else
        next
      end
    end
    
    counter += 1
  end
  
  a
  
end
  
p array_diff([1,2], [1])
