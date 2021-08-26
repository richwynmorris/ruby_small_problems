#  =begin

# Problem: Move the first letter of each word to the end of it, 
# then add "ay" to the end of the word. Leave punctuation marks 
# untouched.

# input: string sentence. 
# ouput: first letter of each word in sentence moved to the end of word
# add 'ay' to the end of each word. 

# explicit req: puncutation must be untouched.
# implicit req: capital letters must remain captial after moviing.

# datastructure: split/array of words from sentence/map/if end_with? else
# /slice/join.


# Algorithim:

# Define a method called pig_it with one paramter, str. 

# Initialize a local variable called 'words_from_sentence'. Assign it the 
# return value of the split method invoked on str.

# invoke map method, param |word|
# -->  if word.length == 1
#          if word is nonalphanumerial
#                 word
#          else
#             word << 'ay'
#       elsif word.end_with?('!','?','.','"') 
#      		lastletter = word.slice!(-1)
#      		word << word.slice!(0) << 'ay'
#      else
#      		word << word.slice!(0) << 'ay'

# return words_from_sentence after invoking the .join method.(' ')

#  =end

 # code:

def pig_it(str)
 	words_from_sentence = str.split
 	words_from_sentence.map! do |word|
 		if word.length == 1
 			if word.match? (/[^\w]/)
 				word
 			else
 				word << 'ay'
 			end
 		elsif word[-1].match? (/[^\w]/)
 			last_letter = word.slice!(-1)
 			word << word.slice!(0) << 'ay' << last_letter
 		else
 			word << word.slice!(0) << 'ay'
 		end
 	end
 	words_from_sentence.join(' ')
end

p pig_it('Pig latin is cool') # igPay atinlay siay oolcay
p pig_it('Hello world !')     # elloHay orldway !