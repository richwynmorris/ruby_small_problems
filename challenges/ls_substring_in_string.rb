# Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, or false if you do not. We only care about substring at are more than one letter long.

# Test Cases: 
# substring_test(['Something', 'Fun']) == false
# substring_test(['Something', 'Home']) == true # substring only need to be 2 letters long
# substring_test(['Something','']) == false
# substring_test(['','Something']) == false
# substring_test(['BANANA', 'banana']) == true # Dont care about the case 
# substring_test(['test','lllt']) == false # substring must be longer than 1 character
# substring_test(['','']) == false #if either of the strings are empty return false
# substring_test(['1234567','541265']) == true 

# Input: which is two strings in an array
# Output: which is a boolean either true or false
# Rules: case does not matter
#        if the any string if empty return false
#        we only care about substrings that are in length 2

# Algorithm:
# - initialise a local variable called substrings and assign it an empty array.
# - return false if array any of the arrays are an empty string.
# - transform all the strings to downcase
# - initalise the local variable small_str_chars and assign it the result of arr.min_by.chars
# - iterate through small_str_chars
#          slice the current index and index + 1 
#          push the slice to substrings
# - iterate through the substring 
#          - see if any of them are included in the longer string (include)
#          if true return true.
# - return false

def substring_test(str1, str2)
  array = [str1, str2]
  substrings = []
  return false if array.any? {|string| string.empty?}
  array.map! {|string| string.downcase}
  
  str_1 = array[0]
  str_2 = array[1]
  
  str_1.chars.each_with_index do |char, index|
    break if index == str_1.length - 1
    substrings << str_1.slice(index..(index + 1))
  end
  
  substrings.each do |substring|
    return true if str_2.include?(substring)
  end
  
  false 
end 

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true 
p substring_test('Something','') == false
p substring_test('','Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test','lllt') == false 
p substring_test('','') == false 
p substring_test('1234567','541265') == true 
           