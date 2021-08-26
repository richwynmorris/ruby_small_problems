# The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.



# solve("codewarriors") == 2
# solve("suoidea") == 3
# solve("iuuvgheaae") == 4
# solve("ultrarevolutionariees") == 3
# solve("strengthlessnesses") == 1
# solve("cuboideonavicuare") == 2
# solve("chrononhotonthuooaos") == 5
# solve("iiihoovaeaaaoougjyaw") == 8

# Input: string
# output: an integer which represents the largest consecutive length of vowels
# Rules: we only want the highest number of consecutive vowels

# Algorithm:
# replace anything that isn't a vowel with a space
# split the string by spaces.
# iterate through the array and find the longest sting
# return the length of the string

def solve(string)
  word = string.chars
  
  word.map! do |char|
    if char.match?(/a|e|i|o|u/)
      char
    else
      ' '
    end
  end
  
  word.join.split(' ').max_by {|chars| chars.length}.length
end

  
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8