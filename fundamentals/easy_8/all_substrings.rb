# Solution:
def substrings(str)
  new_arr = []

  loop do 
  	break if str.chars.empty?
  	1.upto(str.length) do |num|
  		new_arr << str.slice(0, num)
  	end
  	str.delete!(str[0])
  end

  new_arr

end

p substrings('abcde')  == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

