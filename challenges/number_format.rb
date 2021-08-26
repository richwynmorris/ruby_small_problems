# Example:
# Write a function that accepts an array of 10 integers (between 0 and 9), 
# that returns a string of those numbers in the form of a phone number.


# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"


# The returned format must be correct in order to complete this challenge. 

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

=begin

*** (Understand the) Problem: ***
Essential to understanding how to solve a problem.  In order to be able to solve a problem, you have
to at least understand what the problem is and what it is asking.  Take some time to allow the problem
to load into your brain.  Don't rush this.

First identify the inputs and the outputs of the problem

input: array
output:string
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: 
The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem.  
Basically any domain-specific terms or concepts that may be applicable.
It limits the scope of the problem.
For example, if the problem asks you to add up a set of multiples, you need to make sure you know what
multiples are.  Could one word have multiple meanings? etc

Problem Domain: Transform an array object to a string object and format it in the specified way.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?
Implicit Requirements: No
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.

1. Can the method mutate the array object?

2. 

3.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A mental model is an explanation of someone's thought process about how something 
works in the real world.  Think of it as a summary of the "entire problem" written in your own words.
It is your perspective of *what* the problem requires--not *how*.  How is implemented in the Algorithm
section.  
As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model: The method should take an array, and return a string object using the arrays 
contents. Each object in the array is an integer and should be transformed to a string. 
The string should be formatted so it looks like a telephone number. 

===================================================================================================
*** Examples / Test Cases / Edge Cases: ***
Examples: 
THE OBJECTIVE IS to come up with examples that validate your understanding of the problem, and confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.
Your Examples: 
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


===================================================================================================
*** Data Structure:***
Next determine what data structures you will work with to convert the input to the desired output.
THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.
Are you going to use arrays, hashes, etc?
Your data structure will influence your program. 

- array
- string
- string interpolation


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

    Define the method createPhoneNUmber to take one arguement. The parameter should be called arr.

    intialize a variable called phone_str with the value of ''.

    Iterate through the array and transform each object to a string object before pushing it to the 
    variable phone_str using the shovel operator. 

    intialise 3 variables area, first_3 and last_4. Assign area with phone_str(0..2), assign first_3 with 
    phone_str(3..5) and assign last_4 with phone_str(6..-1)

    intialize the local variable formatted_num and use string interpolation using the variable above to 
    format the string

    return formatted_num


=end


# Code:


def createPhoneNumber(arr)

	phone_str = ''

	arr.each do |num|
		phone_str << num.to_s
	end

	area = phone_str[0..2]
	first_3 = phone_str[3..5]
	last_4 = phone_str[6..-1]

	"(#{area}) #{first_3}-#{last_4}"
	

end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])



