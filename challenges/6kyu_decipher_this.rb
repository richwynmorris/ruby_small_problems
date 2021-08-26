# You are given a secret message you need to decipher. Here are the things you need to know to decipher it:

# For each word:

#     the second and the last letter is switched (e.g. Hello becomes Holle)
#     the first letter is replaced by its character code (e.g. H becomes 72)

# Note: there are no special characters used, only letters and spaces

# Examples

# decipherThis('72olle 103doo 100ya'); // 'Hello good day'
# decipherThis('82yade 115te 103o'); // 'Ready set go'


# Input: string sentence, each word has the first letter as it's ascii code, and the 2 and last are reversed
# Output: string with the letters deciphered.
# Rules: There are no special characters
#        if there are only two characters in the word, they cannot be reveresed.

def decipher_this(string) 
  new_words = []
  words = string.split 
  
  words.each do |word|
    num = word.scan(/[0-9]/)
    new_words << num.join.to_i.chr
    word.chars.each do |char|
      new_words << char if char.match?(/[^0-9]/)
    end
    new_words << ' '
  end
 
  result = new_words.join.split.each do |word|
    if word.length > 2
      word[1], word[-1] = word[-1], word[1]
    else
      next
    end
  end
  
  result.join(' ')
  
end

p decipher_this('72olle 103doo 100ya')
p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka")