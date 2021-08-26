=begin
  
Write a program that will ask a user for an input of a word or multiple words and 
give back the number of characters. Spaces should not be counted as a character.

input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

input:

Please write word or multiple words: walk, don't run

output:

There are 13 characters in "walk, don't run".
  
=end

def num_of_chars
  puts "Please write word or multiple words:"
  phrase = gets.chomp

  letters = phrase.delete(' ').chars
  result = letters.length

  puts "There are #{result} characters in #{phrase}"
end

num_of_chars