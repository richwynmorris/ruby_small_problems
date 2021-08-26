# Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of consonant substrings. Consonants are any letters of the alphabet except "aeiou".

# We shall assign the following values: a = 1, b = 2, c = 3, .... z = 26.

# For example, for the word "zodiacs", let's cross out the vowels. We get: "z o d ia cs"

# -- The consonant substrings are: "z", "d" and "cs" and the values are z = 26, d = 4 and cs = 3 + 19 = 22. The highest is 26.
# solve("zodiacs") = 26

# For the word "strength", solve("strength") = 57
# -- The consonant substrings are: "str" and "ngth" with values "str" = 19 + 20 + 18 = 57 and "ngth" = 14 + 7 + 20 + 8 = 49. The highest is 57.

# For C: do not mutate input.

# More examples in test cases. Good luck!


def solve(s)
  letters = s.split(/[aeiou]/)
  alphabet = ('a'..'z')
  letters_and_numbers = Hash.new
  
  alphabet.each_with_index do |letter, index|
    letters_and_numbers[letter] = index + 1
  end
  
  letters.map! do |letter|
    if letter.length.eql?(1)
      letters_and_numbers[letter.downcase]
    else
      letter.chars.map do |split_letter|
        letters_and_numbers[split_letter]
      end.sum
    end
  end
  
  letters.sort.pop
  
end

p solve("zodiacs")
    