def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# The original code was trying to add two different data types: a sting and an array.
# This is why the error code throws up the 'no implicit conversion message'.
# I have altered the code so that the each string object in words will be
# added to the front of the reversed_words using the .unshift method. 