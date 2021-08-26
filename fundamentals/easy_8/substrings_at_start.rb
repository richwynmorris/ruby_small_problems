# Solution:
def substrings_at_start(str)
  new_arr = []

  1.upto(str.length) do |num|
    new_arr << str.slice(0, num)
  end

  new_arr

end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']