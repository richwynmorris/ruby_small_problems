=begin

*** (Understand the) Problem: ***

Essential to understanding how to solve a problem.  In order to be able to solve a problem, you have
to at least understand what the problem is and what it is asking.  Take some time to allow the problem
to load into your brain.  Don't rush this.

*************************************************
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
lways starting with 1. The length of the string should match the given integer.

First identify the inputs and the outputs of the problem

input: postive integer

output: return a string of alternating 1s and 0s. Should be the length of given integer.
Should always start with 1.




_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem.  Basically any domain-specific terms or concepts that may be applicable.
It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to make sure you know what
multiples are.  Could one word have multiple meanings? etc

Problem Domain:

Nope


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: 

Return the string. 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.

1.  Is there a maximum integer? 

2.

3.




_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A mental model is an explanation of someone's thought process about how something 
works in the real world.  Think of it as a summary of the "entire problem" written in your own words.
It is your perspective of *what* the problem requires--not *how*.  How is implemented in the Algorithm
section.  

As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model:

Take one integer, list of digits from 1 to inter in an array. Iterate through the digits and if it is odd, then 
transform it to str obj '1' and if it is if even tranform it to str obj '0'.  join that array so it returns one
string. 



===================================================================================================
*** Examples / Test Cases / Edge Cases: ***

Examples: 
THE OBJECTIVE IS to come up with examples that validate your understanding of the problem, and confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples:

(1..6).to_a
=> [1, 2, 3, 4, 5, 6]

a.map! do |n|
if n.odd?
irb(main):006:2*     '1'
irb(main):007:2*   elsif n.even?
irb(main):008:2*     '0'
irb(main):009:1*   end
irb(main):010:0> end
=> ["1", "0", "1", "0", "1", "0"]


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Test Cases:
Note: Rules for a specific problem are oftentimes an excellent place to find test cases.  If you're 
working with collections, it's a good idea to find test cases that deal with zero, one or multiple
elements in the collection.  

Try to provide test cases that handle any edge cases you can find.
If you're working with collections, it's a good idea to find test cases that deal with zero, one or
multiple elements in the collection.

Your Test Cases:


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Edge Cases:
Edge cases are situations that occur along the "edge" of a specific problem.  For example: problems that 
involve iterating over numbers have edge cases that are at both ends of the range.  Typically can 
involve working with negative numbers, 0, or extremely high values.

Your Edge Cases:

No. 



===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.

THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.

Are you going to use arrays, hashes, etc?

Your data structure will influence your program.

define method/array of digits/map digits with transformed values/ join the array. 


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




Define a method called stringy with one parameter, num. 

Initialize a local variable called array_of_numbers and assign it the return value of 
() range method. 1..num

Call the .map method and iterate through the array_of_numbers and tranform them based on 
their odd or even truthiness. 

Invoke the .join method and return the result. 


=end


# Code:

def stringy(num)

	array_of_numbers = (1..num).to_a

	array_of_numbers.map! do |num|
		if num.odd?
			'1'
		elsif num.even?
			'0'
		end
	end

	array_of_numbers.join

end 


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'