=begin
  
Complete the solution so that the function will break up camel casing, using a space between words.
Example

solution("camelCasing")  ==  "camel Casing"

input: string sentence with someword camelcased.
output: string with each camelcased word seperated.

Mental moddel:
iterate through the words. break the words into letters
if the letter if a capital and it has a letter behind it
insert white space.

Algorithm:
   Define the method solution with one parameter, string. 
   intialize a local variable letters and assign it the value of string.chars
   call each_with_index on letters.
   letters.insert(index, ' ') if the letter.match?(/[A-Z]) && letters[index - 1].match?(/\W/)
   letters.join 

=end

def solution(string)
  letters = string.chars
  result = letters.each_with_index do |letter, index|
    if letter.match?(/[A-Z]/) && letters[index - 1].match?(/\w/)
      letters.insert(index, ' ')
    end
  end
  result.join
end

