def palindrome?(str)
  str == str.chars.reverse.join
end

def real_palindrome?(str)
  letters = ('a'..'z').to_a
  caps = ('A'..'Z')
  nums = (1..9).to_a
  space = [' ']


  arr = str.chars

  arr.select! do |letter|
    letters.include?(letter) || caps.include?(letter) || nums.include?(letter)
  end

  palindrome = arr.join.downcase

  palindrome?(palindrome)
end

p real_palindrome?('madam')  #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false


