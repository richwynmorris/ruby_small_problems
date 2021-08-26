# Given a string of words separated by spaces, write a method that takes this string of words 
# and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will 
# always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

def swap(string)

	words = string.split

	result = words.each_with_index do |word|
		last_letter_index = word.length - 1

		first_letter = word[0].clone
		last_letter = word[last_letter_index].clone

		word[0] = last_letter
		word[last_letter_index] = first_letter
	end

	result.join(' ')

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'


