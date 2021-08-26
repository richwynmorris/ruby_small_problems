# For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. 

# Example #1:

# for string

# s = "ababab"

# the answer is

# ["ab", 3]

# Example #2:

# for string

# s = "abcde"

# the answer is

# because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

def f(string)
  substrings = []
  
  0.upto(string.length - 1) do |current_index|
    current_index.upto(string.length - 1) do |iteration_index|
      substrings << string.slice(0..iteration_index) if string.slice(0..iteration_index).length > 1
    end
  end

  substrings.each do |substring|
    multiplier = string.scan(substring).length
    return [substring, multiplier] if substring * multiplier == string
  end
  
  [string, 1]
end

p f('ababab')
p f("abcde") #== ["abcde", 1]
p f('abcabcabc')
    