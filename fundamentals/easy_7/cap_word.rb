# # solution:
def word_cap(str)
	arr = str.split

	arr.map! do |word|
		word.capitalize
	end

	arr.join(' ')

end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# further exploration 

def word_cap(str)

	arr = str.downcase.split

	arr.each do |word|
		word.gsub!(word[0], word[0].upcase)
	end

	arr.join(' ')

end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

