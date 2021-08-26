# You need to play around with the provided string (s).

# Move consonants forward 9 places through the alphabet. If they pass 'z', start again at 'a'.

# Move vowels back 5 places through the alphabet. If they pass 'a', start again at 'z'.

# Exceptions:

# If the character is 'c' or 'o', move it back 1 place. For 'd' move it back 3, and for 'e', move it back 4.

# If a moved letter becomes 'c', 'o', 'd' or 'e', revert it back to it's original value.

# Provided string will always be lower case, won't be empty and will have no special characters.

def vowel_back(str)
  alphabet = ('a'..'z').to_a
  results = ''
  
  str.chars.each do |char|
    if char.match?(/[bfghjklmnpqrstvwxyz]/)
      index = (alphabet.index(char) + 9)
      index -= 26 if index > 25
      if alphabet[index].match?(/[c|o|d|e]/)
        results << char
      else
        results << alphabet[index]
      end
    elsif char.match?(/[aiu]/)
      index = (alphabet.index(char) - 5)
      index -= 26 if index > 25
      if alphabet[index].match?(/[c|o|d|e]/)
        results << char
      else
        results << alphabet[index]
      end
    elsif char.match?(/c/)
      results << 'b'
    elsif char.match?(/o/)
      results << 'n'
    elsif char.match?(/[d|e]/)
       results << 'a'
    else
      results << char
    end
  end
  
  results
  
end