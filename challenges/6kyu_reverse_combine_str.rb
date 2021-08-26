# Input: str of word seperated by spaces
# output: each word reversed and combined with the next index.
#         string should be one word after this process is repeated
        
# Rules: if the number of words is odd, last must be last but must be reversed.

# Mental Model:
# split the words into and array to work with each element
# reverse each element
# combine the elements using each with index and push each combination to results
# if the result.length = 1 break the loop else repeat the process

# Algorithm:
# words = s.split
# iterate over words and reverse each one
# intialise a local variable current_words = []
# each with index, combin the values and push to current_words
# if the current words.length == 1 break
# else words = current_words

def reverse_and_combine_text(s)
  words = s.split
  return s if words.length.eql?(1) 
  current_words = []
  
  loop do
    last_word = ''
    
    words.map! do |word|
      word.reverse!
    end
    
    last_word = words.pop if words.length.odd?
    
    words.each_with_index do|word, index|
      current_words << word + words[index + 1] if index.even?
    end
    
    current_words << last_word if last_word != ''
    
    break if current_words.length == 1
    
    words = current_words
    current_words = []
   end
  
  current_words
end

p reverse_and_combine_text("abc def")
p reverse_and_combine_text("abc def ghi jkl")
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44")