=begin

*** (Understand the) Problem: ***

Essential to understanding how to solve a problem.  In order to be able to solve a problem, you have
to at least understand what the problem is and what it is asking.  Take some time to allow the problem
to load into your brain.  Don't rush this.

*******************************************************************************************************

child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?
Three conditions must be met for a valid experiment:

    Float parameter "h" in meters must be greater than 0
    Float parameter "bounce" must be greater than 0 and less than 1
    Float parameter "window" must be less than h.

If all three conditions above are fulfilled, return a positive integer, otherwise return -1.
Note:

The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

********************************************************************************************************

First identify the inputs and the outputs of the problem

input: 3 floating point arguments; height, bounce_rate and window.


output: a positive integer if all conditions are fulfilled, otherwise -1. 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem.  Basically any domain-specific terms or concepts that may be applicable.
It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to make sure you know what
multiples are.  Could one word have multiple meanings? etc

Problem Domain:

How to work out 2/3rds - take the number 0.66 and * by the number your trying to find two thirds by.

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: 



_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.

1.

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

method has 3 parameters. within the method capture the answer as local variable, result

if bounce >= 1
	result = -1 
elsif window > height
	result = -1
elsif height < 0
	result -1

if height > window add 1 to result

loop through bounces and modify the height variable by reducing it by bounce.

if the bounce is greater than the window, add 2

if the bounce is less than the window, break.


===================================================================================================
*** Examples / Test Cases / Edge Cases: ***

Examples: 
THE OBJECTIVE IS to come up with examples that validate your understanding of the problem, and confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples:


a = 3.0
=> 3.0     # add 1 to result     
a *= 0.66
=> 1.98    # add 2 to result
a *= 0.66
=> 1.3068. h < window. Break loop

result == 3.

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Test Cases:
Note: Rules for a specific problem are oftentimes an excellent place to find test cases.  If you're 
working with collections, it's a good idea to find test cases that deal with zero, one or multiple
elements in the collection.  

Try to provide test cases that handle any edge cases you can find.
If you're working with collections, it's a good idea to find test cases that deal with zero, one or
multiple elements in the collection.

Your Test Cases:


bouncingBall(3, 0.66, 1.5), 3)
bouncingBall(30, 0.66, 1.5), 15)
bouncingBall(30, 0.75, 1.5), 21)
bouncingBall(30, 0.4, 10), 3)

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

Edge Cases:
Edge cases are situations that occur along the "edge" of a specific problem.  For example: problems that 
involve iterating over numbers have edge cases that are at both ends of the range.  Typically can 
involve working with negative numbers, 0, or extremely high values.

Your Edge Cases:

bouncingBall(40, 1, 10), -1)
bouncingBall(-5, 0.66, 1.5), -1)


===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.

THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.

Are you going to use arrays, hashes, etc?

Your data structure will influence your program.

method bouncigBall, param h, bounce, window

result = 0

if/elsif statements to deal with edge cases.

loop method 

return -1 if result less than 1

return result

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


define method bouncingBall with 3 parameters, h, bounce and window

if bounce >= 1
	result = -1 
elsif window > height
	result = -1
elsif height < 0
	result = -1
end

result += 1 if height > window
	
Invoke a loop method and pass a `do..end` block to it as an argument. 

Express the reserved word break to end the loop iteration when height is less than window.

height *= bounce
if bounce > window
	result += 2

end 

return -1 if the result isn't greater than 1. 

result

=end


# Code:

def bouncingBall(h, bounce, window)
	num_of_bounces = 0
	# Deal with edge cases
	if bounce >= 1 or bounce < 0
		return -1 
	elsif window > h
		return -1
	elsif h < 0
		return -1
	end
	# Add one to result for intial drop
	num_of_bounces += 1 if h > window
	# Reduce the height by the bounce percentage and add two to the result if
	# the height is higher than the window
	loop do
		break if h < window
		h *= bounce
		num_of_bounces += 2 if h > window
	end
	# If result is floating point and less that 1, return -1
	# as it has not reached the window
	return -1 if num_of_bounces < 1
	# Return the result
    num_of_bounces
end

bouncingBall(3, 0.66, 1.5) # => 3
bouncingBall(30, 0.66, 1.5) # =>  15
bouncingBall(30, 0.75, 1.5) # => 21