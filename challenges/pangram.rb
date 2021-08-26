=begin 

A pangram is a sentence that contains every single letter of the alphabet at least once. 
For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, 
False if not. Ignore numbers and punctuation.

Example:
The quick brown fox jumps over the lazy dog." = > True

Input: string sentence
Output: Returned boolean - true or false

Rules: Case is irrelevant
       Ignore numbers and punctuation.

Mental Model:
Generate the alphabet with an array range. 
string downcase!
add each letter to an array - results. 
If its a letter, push to results.
sort results
compare both arrays

Algorithm: 
   Intialise a variable called alphabet and assign it an array range of a - z
   Initalize a variable called downcase_string and assign it with the return value of string.downcase!
   Initialze a variable called results assigned an empty array
   Invoke the each method and pass each character to the block
   if the character is included in alphabet? push to results
   sort the results
   compare ==  
=end

def pangram?(string)

	alphabet = ('a'..'z').to_a

	results = []

	string.downcase!

	string.chars.each do |char|
		results << char if alphabet.include?(char)
	end

	results.uniq!

	results.sort == alphabet

end 

p pangram?("The quick brown fox jumps over the lazy dog.") 