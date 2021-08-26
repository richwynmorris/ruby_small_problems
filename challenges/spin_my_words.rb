# Problem:

# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed 
# (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than 
# one word is present.

# Examples: 
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spinWords( "This is a test") => returns "This is a test" 
# spinWords( "This is another test" )=> returns "This is rehtona test"


# Input: string sentence
# Output: string sentence with every word, that is 5 or more characters, reversed.
# Rules: Only letters and spaces.

# mental model:
# split the string by whitespace and iterate through each object using map.
# if the object is equal to or longer than 5, reverse the object.
# join the object with ' '

def spinWords(string)
  list_of_words = string.split
  list_of_words.map! do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  list_of_words.join(' ')
end


