def neutralize(sentence)
  words = sentence.split(' ')
  words.delete_if { |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# The .each method iterates through the array of words. It deletes the object
# at its index position and continues to iterate through the array. As a result,
# when the string object 'dull' is deleted, the string object 'boring' then moves 
# to index 1. As .each has already iterated over the object at position 1, it does 
# not pass the string object 'boring' to the method negative? and, as a result, it
# is not removed from the string. 


