# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

=begin

*** (Understand the) Problem: ***

Essential to understanding how to solve a problem.  In order to be able to solve a problem, you have
to at least understand what the problem is and what it is asking.  Take some time to allow the problem
to load into your brain.  Don't rush this.

First identify the inputs and the outputs of the problem

input: string

output: mutated string


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem.  Basically any domain-specific terms or concepts that may be applicable.
It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to make sure you know what
multiples are.  Could one word have multiple meanings? etc

Problem Domain: working with alphabetical index positions.  




_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: Capital letters should also be moved forward 3 places.


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.

1. Should the method skip or remove non-alphabetical characters? 

2. Should the method return the same object or a new object?



_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A mental model is an explanation of someone's thought process about how something 
works in the real world.  Think of it as a summary of the "entire problem" written in your own words.
It is your perspective of *what* the problem requires--not *how*.  How is implemented in the Algorithm
section.  

As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model: The problems require me to have a set of a alphabetical characters and transform each
of them to a different alphabetical character that is 3 index positions ahead of it. The method should
skip any non alphabetical characters and return the original character. 



===================================================================================================
*** Examples / Test Cases / Edge Cases: ***

Examples: 
THE OBJECTIVE IS to come up with examples that validate your understanding of the problem, and confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples:
dcase_alph = ("a".."z").to_a
upcase_alphabet = ("A".."Z").to_a 


/[a-w]/.match? ('a') => true
/[Xx]/.match?('x') or /[Xx]/.match?('x') => true

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Test Cases:
Note: Rules for a specific problem are oftentimes an excellent place to find test cases.  If you're 
working with collections, it's a good idea to find test cases that deal with zero, one or multiple
elements in the collection.  

Try to provide test cases that handle any edge cases you can find.
If you're working with collections, it's a good idea to find test cases that deal with zero, one or
multiple elements in the collection.

Your Test Cases:



_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Edge Cases:
Edge cases are situations that occur along the "edge" of a specific problem.  For example: problems that 
involve iterating over numbers have edge cases that are at both ends of the range.  Typically can 
involve working with negative numbers, 0, or extremely high values.

Your Edge Cases:


if xyz, they should be return the values at index 0..2


===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.

THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.

Are you going to use arrays, hashes, etc?

Your data structure will influence your program.


Ruby
str/m_str/regex/arr/map!

===================================================================================================
*** Algorithm: ***

Start with your mental model if you have one.  While you're still learning to solve problems,
it would be a good idea to consistently create mental models to assist you.

Otherwise you can start with your Data Structure, and think about how you'd build and manipulate
it to get to the output.  For example, if you're going to use an array maybe you would want to focus
on constructing or iterating over a collection.

** THE CHIEF OBJECTIVE HERE is to determine a series of instructions that will transform the input
into the desired output.
    - The challenege is to get to the right amount of detail (think about the steps to creating a
    peanut butter and jelly sandwich.)
    - You want something that you can readily convert to code without actually writing code.
    - Before implementing the algorithm, you should test it manually with test cases.  

    define method letter_changes with the parameter str

    intitalize variable dc_alph for downcase characters of alphabet

    intialize variables uc_alph for upcase characters of alphabet

    invoke chars on str arguement to return an array of characters. Invoke the .map! method
    to iterate over each character

    if the character matches the regex [a-w]
    	return the value at index + 3 
    elsif the character matches reger[A-W]
    	return value at index + 3 
    elsif the characer matches regex Xx
    	if x 
    		return value at dc_alph 0
    		else return value at uc_alph 0
    repeat for Yy && Zz
    join the array to return the string at the end of the method. 

=end


# Code:


def letter_changes(str)
	dc_alph = ('a'..'z').to_a
	uc_alph = ('A'..'Z').to_a
	str.chars.map! do |letter|
		if /[a-w]/.match? (letter)
			dc_alph[(dc_alph.index(letter) + 3)]
		elsif /[A-W]/.match? (letter)
			uc_alph[(uc_alph.index(letter) + 3)]
		elsif /[Xx]/.match? (letter)
			if letter == 'x'
				dc_alph[0]
			else
				uc_alph[0]
			end
		elsif /[Yy]/.match? (letter)
			if letter == 'y'
				dc_alph[1] 
			else
				uc_alph[1]
			end
		elsif /[Zz]/.match? (letter)
			if letter == 'z'
				dc_alph[2] 
			elsif 
				uc_alph[2]
			end 
		else
			letter
		end
	end.join
end







			




