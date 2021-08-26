
def substrings_at_start(str)
  new_arr = []

  0.upto(str.length - 1) do |num|
    new_arr << str[0..num]
  end
  new_arr
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results

end

def my_palindromes(arr)

	new_arr = substrings(arr)

	new_arr.select! do |substring|
  		substring == substring.reverse && substring.length > 1
  	end

  	new_arr

end

p my_palindromes('abcd') == []
p my_palindromes('madam') == ['madam', 'ada']
p my_palindromes('hello-madam-did-madam-goodbye') == [
'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
 '-madam-', 'madam', 'ada', 'oo'
]
p my_palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
