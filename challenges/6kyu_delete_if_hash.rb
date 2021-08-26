# Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

# Your task is to process a string with "#" symbols.
# Examples

# "abc#d##c"      ==>  "ac"
# "abc##d######"  ==>  ""
# "#######"       ==>  ""
# ""              ==>  ""
    
def clean_string(string)
  chars = string.chars
  stack = []
  
  chars.each do |char|
    stack << char if char != '#'
    stack.pop if char == '#'
  end
  
  stack.join
  
end

p clean_string('abc#d##c')
