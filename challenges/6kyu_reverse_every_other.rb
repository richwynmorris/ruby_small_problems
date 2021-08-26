# Reverse every other word in a given string, then return the string. Throw away any leading 
# or trailing whitespace, while ensuring there is exactly one space between each word. 
# Punctuation marks should be treated as if they are a part of the word in this kata.

# Input: string sentence
# Output: same sting sentence with the word at index.odd reverseed
# Rules: no trailing whitespace
#        punctuation is part of the word

# Mental Model:
# split the sentence into words by whitespace.
# if the index of the word is odd, reverse it.
# join the sentence with a space.

# Data Structure: split/words/map.with_index/reverse/join

# Algorithm:
# initialize variable words and invoke split on the str.
# invoke the .map! method and the .with_index method.
# within the block, invoke the reverse method on the word.
# words.join

def reverse_alternate(string)
  words = string.split
  
  words.map!.with_index do |word, index|
    if index.odd?
      word.reverse!
    else
      word
    end
  end
  
  words.join(' ')
  
end

p reverse_alternate("I really hope it works this time...")