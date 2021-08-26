# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

# solve(["abode","ABc","xyzD"]) = [4, 3, 1]

# See test cases for more examples.

# Input will consist of alphabet characters, both uppercase and lowercase. No spaces.


# Input: an array of words
# output: the number of letters that match their position in the alphabet.
# Rules: case insenstive
#        array could have more than 3 strings

# solve(["abode","ABc","xyzD"]) == [4,3,1] 
# solve(["abide","ABc","xyz"]) == [4,3,0] 
# solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
# solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]


# algorithm:
# initialize the alphabet
# capture the results in an empty array
# we need to make the string we're working with downcase
# iterate through the characters of each word
# if the characters index in the word matches its index in the alphabet,
# add 1 to the count
# once you have finished iterating through the words send the count to the results

def solve(array)
  alphabet = ('a'..'z').to_a.join
  results = []
  
  array.each do |string|
    count = 0
    string.downcase!
    string.chars.each_with_index do |char, index|
      count += 1 if string[index] == alphabet[index]
    end
    results << count
  end
  results 
end

p solve(["abode","ABc","xyzD"])
p solve(["abide","ABc","xyz"]) == [4,3,0] 
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]