# Write a method that returns a list of all substrings of a string that are palindromic. 
# That is, each substring must consist of the same sequence of characters forwards as it 
# does backwards. The return value should be arranged in the same sequence as the substrings 
# appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to
#  case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, 
#   assume that single characters are not palindromes.

# Examples:

# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# Mental Model
# collect all the possible versions of the substrings.
# iterate through the collection and check if the substring is the same forwards as backwards
# if it is one character, skip it.

def substrings(str)
  results = []
  list_of_chars = str.chars
  next_index = 0

  loop do
    break if list_of_chars[next_index] == nil

    list_of_chars.each_with_index do |char, index|
      next if index < next_index
      results << list_of_chars.slice(next_index..index).join
    end

    next_index += 1
  end
  results
end 


def palindromes(str)
  collection = substrings(str)
  results = []

  collection.each do |substring|
    next if substring.length.eql?(1)
    results << substring if substring.eql?(substring.reverse)
  end

  results
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]
