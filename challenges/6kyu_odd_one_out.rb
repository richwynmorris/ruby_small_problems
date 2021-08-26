# Complete the function that takes a string as an input, and return a list of all the unpaired characters (i.e. they show up an odd number of times in the string), in the order they were encountered as an array.

# In case of multiple appearances to choose from, take the last occurence of the unpaired character.

# Notes:

#     A wide range of characters is used, and some of them may not render properly in your browser.
#     Your solution should be linear in terms of string length to pass the last test.

# Examples

# "Hello World"   -->  ["H", "e", " ", "W", "r", "l", "d"]
# "Codewars"      -->  ["C", "o", "d", "e", "w", "a", "r", "s"]
# "woowee"        -->  []
# "wwoooowweeee"  -->  []
# "racecar"       -->  ["e"]
# "Mamma"         -->  ["M"]
# "Mama"          -->  ["M", "m"]


# Input: str
# Output: an array with the unpaired characters missing



def odd_one_out(s)
  
  arr = s.chars.delete_if {|char| s.chars.count(char).even? }
  
  return arr if arr.length.eql?(1)
  
  arr.select!.with_index do |char, index|
    char if char != arr[index + 1] && char != arr[index -1]
  end
  
  arr
  
end

p odd_one_out("Hello World")
p odd_one_out("Mamma" )
p odd_one_out("wwoooowweeee")