# Encrypt this!

# You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:

#     Your message is a string containing space separated words.
#     You need to encrypt each word in the message using the following rules:
#         The first letter needs to be converted to its ASCII code.
#         The second letter needs to be switched with the last letter
#     Keepin' it simple: There are no special characters in input.

# Examples:

# encrypt_this("Hello") == "72olle"
# encrypt_this("good") == "103doo"
# encrypt_this("hello world") == "104olle 119drlo"

# input: string sentence.
# output: mutated string with first letter as ascii code and second and last switched.
# Rules: spaces remain te same. No special characters.

def encrypt_this(str)
  words = str.split
  
  words.each do |word|
    word[1],word[-1] = word[-1], word[1] if word.length > 1
  end
  
  words.map! do |word|
    word = word.chars.map.with_index do |letter, index|
      if index == 0
        letter.ord
      else
        letter
      end
    end.join
  end
  words.join(' ')
end