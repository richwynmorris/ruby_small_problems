# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

# Notes:

#     Only lower case letters will be used (a-z). No punctuation or digits will be included.
#     Performance needs to be considered

# Input strings s1 and s2 are null terminated.

# Examples

# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False
      
def scramble(letters, word)
  contains_word = true
  word.chars.each do |letter|
    if letters.count(letter) < word.count(letter) || !letters.include?(letter)
      contains_word = false 
      break if contains_word == false
    end
  end
  contains_word
end 


p scramble('rkqodlw', 'world') #==> True
p scramble('cedewaraaossoqqyt', 'codewars') #==> True
p scramble('katas', 'steak') #==> False
p scramble("scriptingjava", "javascript")