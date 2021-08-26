# Problem:

# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

# Example:
# high('man i need a taxi up to ubud') => 'taxi'

# Input: String sentence.
# Output: highest socring word as a string 
# Rules: A character's value is based on its postition in the alphabet. e.g a = 1

# Mental Model:
#   Seperate the word in the sentence as elements in an array, iterate through the array and
#   assign the word the sum value of the characters associated num. store this information in a hash.
#   select the key-value pair that has the largest value. Print the key that is accociated value.

# # Algorithim:
#   define a method called high will 1 parameter, x. 
#   intialize local variable words_in_sentence and assign it the return value of x.split(' ')
#   intialize the local variable alphabet and assign it with the return value of range a..z
#   intialize the local variable results with an empty hash
#   invoke the each method and pass each word to the block. 
#   intialize a local variable sum_of_word and assign it will 0
#   within the block invoke the chars method and invoke the each method
#   if the current letter matches a letter in alphabet, return the index position of
#   alphabet + 1. Add the return value to sum of word.
#   push the word and the sum of word as a key-value pair to results.
#   return the key with the highest result. 


def high(x)

  words_in_sentence = x.split

  alphabet = ('a'..'z').to_a

  results = {}

  words_in_sentence.each do |word|
    sum_of_letters = 0
    word.chars.each do |letter|
      sum_of_letters += alphabet.index(letter) + 1
    end
    results[word] = sum_of_letters 
  end

results.key(results.values.max)

end

p high('man i need a taxi up to ubud') # => taxi
