# Background
# There is a message that is circulating via public media that claims a reader can easily read a message where the inner letters of each words is scrambled, as long as the first and last letters remain the same and the word contains all the letters.

# Another example shows that it is quite difficult to read the text where all the letters are reversed rather than scrambled.

# In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

# Requirement
# return a string where:

# 1) the first and last characters remain in original place for each word
# 2) characters between the first and last characters must be sorted alphabetically
# 3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

# Assumptions

# 1) words are seperated by single spaces
# 2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
# 3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
# 4) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
# 5) ignore capitalisation

# scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

# if the string is empty return an empty string
# if the word is 2 letters, return it
# remove the punctuation first
# capture its index
# rearrange the word
# reinsert punctuation after the word have been rearranged

def remove_punc_and_add_index(word)
    punc_collection = []
    word.chars.each_with_index do |char, index|
      if char.match?(/[',.\-]/)
        punc_collection << [char, index]
      end
    end
    punc_collection
end
  
def scramble_words(str)
  return str if str.empty?
  words = str.split
  words.each do |word|
    next if word.length == 2
    punc_collection = remove_punc_and_add_index(word)
    word.gsub!(/['.\-,]/, '')
    bit = word.slice!(1...-1)
    bit = bit.chars.sort.join
    word.insert(1, bit)
    punc_collection.each do |arr|
      word.insert(arr[1], arr[0])
    end
  end
  words.join(' ')
end
    
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

