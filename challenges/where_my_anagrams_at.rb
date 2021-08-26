=begin
	
Write a function that will find all the anagrams of a word from a list. 
You will be given two inputs a word and an array with words. You should 
return an array of all the anagrams or an empty array if there are none. For example:

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []
	
Input: string and a array of anagrams
Output: array with the anagrams that match the string or
and empty array if there is non

=end

def anagrams(word, words)
	results = []
	letters = word.chars.sort!
	words.each do |current_word|
		current_letters = current_word.chars.sort
		results << current_word if current_letters == current_word
	end
	results
end 

