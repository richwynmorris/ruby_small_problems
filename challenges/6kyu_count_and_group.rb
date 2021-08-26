# Write a method that takes a string as an argument and groups the number of time each character appears in the string as a hash sorted by the highest number of occurrences.

# The characters should be sorted alphabetically e.g:

# get_char_count("cba") => {1=>["a", "b", "c"]}

# You should ignore spaces, special characters and count uppercase letters as lowercase ones.

# For example:

# get_char_count("Mississippi") => {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# get_char_count("Hello. Hello? HELLO!!") => {6=>["l"], 3=>["e", "h", "o"]}
# get_char_count("aaa...bb...c!") => {3=>["a"], 2=>["b"], 1=>["c"]}
# get_char_count("aaabbbccc") => {3=>["a", "b", "c"]}
# get_char_count("abc123") => {1=>["1", "2", "3", "a", "b", "c"]}

# Input: str sentence with letter, special characters and spaces.
# output: hash with the number of times the letter appears in the string and the value as the letters from the string, sorted alphabetically in an array. 

# Rules: ignore space, special chars
#        uppcase counts as lowercase - 

# Mental Model:
# create a new hash object - []
# make the string downcase, delete anything that isn't a letter.
# iterate through the characters in the string
# push the numbers of its times it appears with count push the value to the array.
# return hash

# Data Structure: Hash.new/downcase/select!/match?/chars/each/hash/push/hash

def get_char_count (string)
  
  results = Hash.new
  
  array_of_chars = string.downcase.chars
  
  array_of_chars.select! do |letter|
    letter.match?(/[a-z0-9]/)
  end
  
  uniq_chars = array_of_chars.uniq
  
  uniq_chars.sort.each do |char|
    count_times = array_of_chars.count(char)
    if results.keys.include?(count_times)
      results[count_times] << char
    else
      results[count_times] = [char]
    end
  end
  
  results.sort_by {|k,v| -k }.to_h
  
end

# Using the group_by method
def get_char_count (string)
  array_of_chars = string.downcase.chars
  array_of_chars.select! do |letter|
    letter.match?(/[a-z0-9]/)
  end
  array_of_chars.uniq.sort.group_by {|char| array_of_chars.count(char)}
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]} 
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}