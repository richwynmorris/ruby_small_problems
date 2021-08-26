# write a method to find the longest common prefix string amongst an array of strings.

# if there is no common prefeix return ""

# Example 1:
  
# Input: ['flower', 'flow', 'flight']
# output: "fl"

# Examples 2:
# Input: ['dog', 'racecar', 'car']
# Ouput: '' 

# All given inputs are lowercase letters a-z

# p common_prefix(['flower', 'flow', 'flight']) == 'fl'
# p common_prefix(['dog', 'racecar', 'car'])
# p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inter'
# p common_prefix(['throne', 'dungeon']) == ''
# p common_prefix(['throne', 'throne']) == 'throne'

# Input: an array of strings
# Output: the longst common prefix shared by all strings in the array.
# Rules: if there is no common prefix between all words, then return ''
#        only need to consider lowercase letters a-z
  
# Algorithm:
#   intialize a local variable called prefixes_in_first_string and assign it with an empty array.
#   initialize a local variable called highest_prefix with an empty string
#   invoke a loop method
#     this will break when the index == matches the strings length -1 
#     slice each prefix and send it to  prefixes_in_first_string
#   iterate throug the prefixes 
#     if the current prefix is in all the other strings and its's length is greater than the current prefeix,
#     reassign prefix to the current one.
  
#   highest_prefix. 


def common_prefix(array)
  prefixes_in_first_string = []
  highest_prefix = ''
  index = 0
  
  loop do
    break if index == array[0].length 
    
    prefixes_in_first_string << array[0].slice(0..index)
    
    index += 1
  end
  
  prefixes_in_first_string.each do |prefix|
    if array.all? {|string| string.match?(prefix)} && prefix.length > highest_prefix.length
      highest_prefix = prefix
    end
  end
  
  highest_prefix
  
end
         


p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == '' 
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['throne', 'throne']) == 'throne'
  