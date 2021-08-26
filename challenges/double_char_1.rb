# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:

# repeater('Hello') == "HHeelllloo"
# repeater("Good job!") == "GGoooodd  jjoobb!!"
# repeater('') == ''

def repeater(str)
  new_str = ''
  return new_str if str.eql?('')
  str.chars.each do|char|
    new_str << char * 2
  end
  new_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''