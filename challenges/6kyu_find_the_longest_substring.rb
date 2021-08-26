# We have to find the longest substring of identical characters in a very long string.

# Let's see an example:

# s1 = "1111aa994bbbb1111AAAAAFF?<mmMaaaaaaaaaaaaaaaaaaaaaaaaabf"

# The longest substring in s1 is "aaaaaaaaaaaaaaaaaaaaaaaaa" having a length of 25, made of character, "a", with its corresponding ascii code equals to "97", and having its starting index 29 and the ending one 53.

# We express the results using an array in the following order: ["97", 25, [29,53]]

# The symbols '!"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~' that a string may have will be considered as noise, so they cannot be a solution even though the substring, made of one of them, is the longest of all. In other words, the allowed characters may be the uppercase or lower letters of the English alphabet or the decimal digits ('0123456789')

# Let's see an example to show what happens if we have non alphanumeric symbols.

# s2 = "1111aa994bbbb1111AAAAAFF????????????????????????????" The longest substring is "AAAAA" so the result for it is:

# ['65', 5, [17, 21]]

# If there are two or more substrings with the maximum length value, it will be chosen the one that starts first, from left to right.

# Make an agile code that may output an array like the one shown above when it receives a huge string.

# Features of the random tests:

# number of tests = 210
# length of the strings up to a bit more than:
# 10.000.000 (python and javascript)
# 6.000.000 (ruby)
 

# Input: a string sentence made up with many repeating characters.
# Output: an array that contains the ascii code for the longest character, the length of the longest repeated character and it's start and end position in the array. 
# Rules: the repeated pattern cannot include '!"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~'. Only alpha numerical. >>
#        uppercase and lowercase letters are considered different characters.
      
      
# Mental Model:
# capture each individual pattern from the string and add them to a collection to inspect
# select the longest
# format the results into [ascii, length, [start_index..end_index]]

# Algorithm:
# intialize a local variable called string_results with an empty array.
# intialize a local variable called temp_string with an empty string
# break the string into indivual characters and iterate through the string.
#     - if the char isn't alpha numberical, next. 
#     - if the next char is the same as the current char, push the current_char to the temp string
#     - if it isn't the same, push the current char to the temp string and add the temp string to the
#       string results, make the temp_string empty again.

# sort the results by length and choose the last one. 

# Original Solution

def find_longest_substr(s)
  string_results = []
  temp_string = ''
  characters = s.chars
  
  characters.each_with_index do |char, index|
    if char.match?(/[^a-z|A-Z|0-9]/)
      next
    elsif char == characters[index + 1]
      temp_string << char
    elsif char != characters[index + 1]
      temp_string << char
      string_results << temp_string
      temp_string = ''
    end
  end
  
  last_result = string_results.sort {|a,b,| a.length <=> b.length}.last
  
  string_results.select! do |string|
    string.length == last_result.length
  end
  
  highest_result = string_results.first
  
  ascii = highest_result[0].ord.to_s
  length = highest_result.length
  start_index = s.index(highest_result)
  end_index = start_index + (highest_result.length - 1)
  
  return [ascii, length, [start_index,end_index]]
  
end


# Optimized Solution

def find_longest_substr(s)
  string_results = s.scan(/(([a-z0-9A-Z])\2*)/)
  
  string_results.map! do |str, el|
    str
  end
  
  highest_result = string_results.max_by {|string| string.length}
  
  ascii = highest_result[0].ord.to_s
   length = highest_result.length
   start_index = s.index(highest_result)
   end_index = start_index + (highest_result.length - 1)
  
   return [ascii, length, [start_index,end_index]]
end

p find_longest_substr("1111aa994bbbb1111AAAAAFFcfgBBBBB")