# Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string. Empty strings should return an empty string.

# The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears.

# string_expansion('3D2a5d2f') == 'DDDaadddddff'

# string_expansion('3abc') == 'aaabbbccc'       # correct
# string_expansion('3abc') != 'aaabc'           # wrong
# string_expansion('3abc') != 'abcabcabc'       # wrong

# If there are two consecutive numeric characters the first one is ignored.

# string_expansion('3d332f2a') == 'dddffaa'

# If there are two consecutive alphabetic characters then the first character has no effect on the one after it.

# string_expansion('abcde') == 'abcde'

# Your code should be able to work for both lower and capital case letters.

# string_expansion('') == ''

# Input: str of alphanumerical values.
# Output: str with each alphbetical character returned the number of times in the preceding integer.
# rules: 
# - empty string returns itself.
# - each character should be repeated the number of times of the proceeding integer

# Mental Model:
# capture the results in a str format
# return str if str is == '' || str doesn't have numbers.
# characters = str.chars
# iterate of the object with each_with_index
# if the index is equal to 0 and current_number is 0, results << letter  
# if the current character is a number, assign the number to the variable current_number
# if the current character is a letter
# times the letter by the current_number and push to results
# return the results.

def string_expansion(str)
  
  return str if str.eql?('') || str.chars.all? {|letter| letter.match?(/[a-z,A-Z]/)} 
  
  results = '' 
  
  characters = str.chars
  
  current_number = 0
  
  characters.each_with_index do |letter, index|
    if index.eql?(0) && letter.match?(/[a-z,A-Z]/)
      results << letter
    elsif letter.match? (/[0-9]/)
      current_number = letter
    elsif letter.match? (/[a-z,A-Z]/)
        results << letter * current_number.to_i
    end
  end
  
  results
  
end 

p string_expansion('3D2a5d2f')
p string_expansion('3abc')
p string_expansion('abcde')