# Given a string of integers, return the number of odd-numbered substrings that can be formed.

# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

# solve("1341") = 7
  
# solve("1341") == 7
# solve("1357") == 10
# solve("13471") == 12
# solve("134721") == 13
# solve("1347231") ==20
# solve("13472315") == 28
  
# Input: string of numbers
# Output: an integer that represents the number of substrings that can be formed using only odd numbers.

# Algorithm:
# initialise the local variable substrings with an empty array
# # collect all substrings
#  - go from 0 up to the last index positions
#       iterate within the iteration and collect each of the substrings using slice
#       push the slice.to_i to the substrings array
# iterate through the substring, select only substrings that are even.
# return the length of the substrings.
    
def solve(string)
  substrings = []
  
  0.upto((string.length - 1)) do |current_index|
    current_index.upto((string.length - 1)) do |iteration_index|
      substrings << string.slice(0..iteration_index).to_i
    end
  end
  
  substrings.select! do |num|
    num.odd?
  end
  
 substrings.length 
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") ==20
p solve("13472315") == 28