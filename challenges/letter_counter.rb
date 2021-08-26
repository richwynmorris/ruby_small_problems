# Write a method that takes a string with one or more space separated words and returns a hash 
# that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}


def word_sizes(string)
	results = {}
	list_of_words = string.split
	list_of_words.each do |word|
		length = word.length
		results[length] = list_of_words.count { |word| word.length == length }
	end
	results
end

# Alternative:
def word_sizes(string)
	results = Hash.new(0)
	string.split.each do |word|
		results[word.length] += 1
	end
	results
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}