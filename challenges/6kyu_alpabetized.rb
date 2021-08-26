# The alphabetized kata

# Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

# The input is restricted to contain no numerals and only words containing the english alphabet letters.

# Example:

# alphabetized("The Holy Bible") # "BbeehHilloTy"

# input: string of letters and punctuation
# output: new string with the characters from the str, in alphabetical order and order or appearence.
# Rules: new string should have no whitespace or puncutation.


# Mental Model
# collect the characters from the string. Only want a-z or A-Z
# sort the letters based on the letter in the block at downcase.
# join the letters.
# return


def alphabetized(str)
  
  letters = []
  
  str.chars.each do |letter|
   letters << letter if letter.match? (/[a-zA-Z]/)
  end
  
  letters.sort! { |a,b| a.downcase <=> b.downcase }

  letters.join
  
end
