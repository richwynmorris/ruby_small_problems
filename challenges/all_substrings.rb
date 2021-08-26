=begin
Write a method that returns a list of all substrings of a string. The returned list should be
 ordered by where in the string the substring begins. This means that all substrings that start
  at position 0 should come first, then all substrings that start at position 1, and so on. 
  Since multiple substrings will occur at each position, the substrings at a given position 
  should be returned in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end

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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]