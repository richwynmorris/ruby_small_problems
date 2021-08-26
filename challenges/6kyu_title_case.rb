# A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

# Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

# ###Arguments (Haskell)

#     First argument: space-delimited list of minor words that must always be lowercase except for the first word in the string.
#     Second argument: the original string to be converted.

# ###Arguments (Other languages)

#     First argument (required): the original string to be converted.
#     Second argument (optional): space-delimited list of minor words that must always be lowercase except for the first word in the string. The JavaScript/CoffeeScript tests will pass undefined when this argument is unused.

# ###Example

# title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
# title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
# # title_case('the quick brown fox') # should return: 'The Quick Brown Fox'

# Input: first arguement is a string sentence to be modified. The second string is the words which in the original sentence should be made to be a downcase 
# Output: the original string sentence with each word modified if included in the second string.

# Mental Model:
# make the string_1 all downcase
# turn both strings into lists
# iterate through the first string and transform the character based on whether its included in the exception string
# join the string.
  
# Algorithm:
# -intialise the local variable title_chars with title.downcase!.chars
# - initalise the local variable minor_chars with minor_words.chars
# - invoke the map method on title_chars and pass each element to the block
# -             go to next item if the current element is included in the block 
# -             else make the character.capaitalize
# - join the string


def title_case(title, minor_words = true)
  title_words = title.downcase.split
  
  return title_words.map! {|word| word.capitalize!}.join(' ') if minor_words == true
  
  minor_words_split = minor_words.downcase.split  
  
  title_words.map!.with_index do |word,index|
    if index == 0 or !minor_words_split.include?(word)
      word.capitalize!
    else
      word
    end
  end.join(' ')
  
end
p title_case('a clash of KINGS', 'a an the of')