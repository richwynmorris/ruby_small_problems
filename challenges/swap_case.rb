
# Swap Case

# Write a method that takes a string as an argument and returns a 
# new string in which every uppercase letter is replaced by its 
# lowercase version, and every lowercase letter by its uppercase version.
#  All other characters should be unchanged.

# You may not use String swapcase; write your own version of this method.

# Example:

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(string)

  string.chars.map! do |letter|
    if letter == letter.upcase
      letter.downcase
    else
      letter.upcase
    end
  end.join

end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
