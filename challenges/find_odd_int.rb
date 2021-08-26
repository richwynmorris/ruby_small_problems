
=begin

*** (Understand the) Problem: ***

Essential to understanding how to solve a problem.  In order to be able to solve a problem, you have
to at least understand what the problem is and what it is asking.  Take some time to allow the problem
to load into your brain.  Don't rush this.

---

Given an array, find the integer that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
---

First identify the inputs and the outputs of the problem

input: array

output: integer


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem.  Basically any domain-specific terms or concepts that may be applicable.
It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to make sure you know what
multiples are.  Could one word have multiple meanings? etc

Problem Domain: iterate through the array and count how many times the integer appears in the array.
If it appears an odd number of times, return that integer.




_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: return the integer.





_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.

1. print the integer to the console? 

2. Will there be nested arrays within the array?

3. Should the integer be printed as a string or returned as an integer?




_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A mental model is an explanation of someone's thought process about how something 
works in the real world.  Think of it as a summary of the "entire problem" written in your own words.
It is your perspective of *what* the problem requires--not *how*.  How is implemented in the Algorithm
section.  

As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model:

Iterate through the array and select! the integer that, after being counted, appears an odd number of times.
after iteration pop item from the array to return the single integer.




===================================================================================================
*** Examples / Test Cases / Edge Cases: ***

Examples: 
THE OBJECTIVE IS to come up with examples that validate your understanding of the problem, and confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples:

a = [1,2,2,3,3]

a.select! do |num|
	a.count(num).odd?
end

a.pop


_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Test Cases:
Note: Rules for a specific problem are oftentimes an excellent place to find test cases.  If you're 
working with collections, it's a good idea to find test cases that deal with zero, one or multiple
elements in the collection.  

Try to provide test cases that handle any edge cases you can find.
If you're working with collections, it's a good idea to find test cases that deal with zero, one or
multiple elements in the collection.

Your Test Cases:


a = [1,1,2,2,3,3]

a.select! do |num|
	a.count(num).odd?
end

a.pop

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Edge Cases:
Edge cases are situations that occur along the "edge" of a specific problem.  For example: problems that 
involve iterating over numbers have edge cases that are at both ends of the range.  Typically can 
involve working with negative numbers, 0, or extremely high values.

Your Edge Cases:

Testing to see if the num counts itself when iterating over the object. 
With select it does. Therefore it, will return an item that appears an even amount
of times as the the value being passed in as a parameter does not include itself when 
counting the number of elements. 

[20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]
=> [20, 5]

I will instead use the method detect to return a single integer as the it passes each item from the array
and detects if the objects evaluates to true, 



===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.

THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.

Are you going to use arrays, hashes, etc?

Your data structure will influence your program.

Ruby/Array/find_it/Detect/Integer


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


Define method find_it with the parameter seq.

Invoke detect! using the explicit operator on seq.

Invoke count using the explicit operator . on seq and pass the num to count as an argument.

Invoke odd? using the explicit operator . on return value of count.

Return the object if present.

Enter reserved keyword end to end the method definition.  


=end


def find_it(seq)
	seq.detect { |num| seq.count(num).odd? }
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])





