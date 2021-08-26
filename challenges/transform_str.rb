# Given the string of chars a..z A..Z do as in the sample cases
# p accum("abcd")    # "A-Bb-Ccc-Dddd"
# p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# p accum("cwAt")    # "C-Ww-Aaa-Tttt"

# Input: Str
# Output: Str, each character is printed by its index + 1
#         The firsrt character is a capital and the rest are lowercase

# Mental Model:
# split the string up into characters.
# capture the str in an array.
# each_with_index
# Join characters (-)

# Def method accum, with one param, str.
# int variable 'letters' with str.chars
# iterate through letters and pass each letter and its index to the block
# if the index == 0, push the letter.upcase to results
# else << results letter.upcase << letter + index 
# results.join('-')

def accum(str)
  
  letters = str.chars
  
  results = []
  
  letters.each_with_index do |letter, index|
    if index.eql?(0)
      results << letter.upcase
    else
      results << letter.upcase + (letter.downcase * index)
    end
  end
  
  results.join('-')
  
end

p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")    # "C-Ww-Aaa-Tttt"
p accum("abcd")    # "A-Bb-Ccc-Dddd"