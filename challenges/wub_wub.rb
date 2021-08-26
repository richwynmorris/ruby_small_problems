=begin

*** (Understand the) Problem: ***

Essential to understanding how to solve a problem.  In order to be able to solve a problem, you have
to at least understand what the problem is and what it is asking.  Take some time to allow the problem
to load into your brain.  Don't rush this:

*********************************************************************************************************

Polycarpus works as a DJ in the best Berland nightclub, and he often uses dubstep music in his performance. 
Recently, he has decided to take a couple of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB). To make the dubstep 
remix of this song, Polycarpus inserts a certain number of words "WUB" before the first word of the song 
(the number may be zero), after the last word (the number may be zero), and between words (at least one 
between any pair of neighbouring words), and then the boy glues together all the words, including "WUB", 
in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as "WUBWUBIWUBAMWUBWUBX" and 
cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't into modern music, he decided
to find out what was the initial song that Polycarpus remixed. Help Jonny restore the original song.
Input

The input consists of a single non-empty string, consisting only of uppercase English letters, the string's 
length doesn't exceed 200 characters
Output

Return the words of the initial song that Polycarpus used to make a dubsteb remix. Separate the words with a space.

***********************************************************************************************************

First identify the inputs and the outputs of the problem

input: String of uppercase characters that contain lyrics with WUBWUB or WUB between each word.

output: String of lyrics with the words seperated with a space.

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Problem Domain: The Problem Domain is the area of expertise or application that needs to be 
examined to solve a problem.  Basically any domain-specific terms or concepts that may be applicable.
It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to make sure you know what
multiples are.  Could one word have multiple meanings? etc

Problem Domain:
Working with string patterns. 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Check for Implicit Requirements.  Are there requirements that are not explicitly stated?

Implicit Requirements: 

The string should only contain one space between words in the lyrics. 

The string could contain more than 2 WUB's.
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Clarifying Questions:  Some questions to ask the interviewer (or perhaps yourself) to better 
understand the problem.

1. Is it limited to two wubs one after another or more.

2. Should the return value be the same string object or a new object?

3.




_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
Mental Model:  A mental model is an explanation of someone's thought process about how something 
works in the real world.  Think of it as a summary of the "entire problem" written in your own words.
It is your perspective of *what* the problem requires--not *how*.  How is implemented in the Algorithm
section.  

As a rule of thumb, you can keep the number of mental models to one if it fully, and accurately,
captures the requirements of the problem.

Your Mental Model:

intialize a variable words_arr and assign it the value of the string split by the string object "WUB"

iterate through words arr and select! anything that isn't a space.

arr.join(' ')  



===================================================================================================
*** Examples / Test Cases / Edge Cases: ***

Examples: 
THE OBJECTIVE IS to come up with examples that validate your understanding of the problem, and confirm
that you are working in the right direction.  Typically the confirmation will come from documentation of 
a process, or a person.

Your Examples:

"WUBWUBIWUBAMWUBWUBX".split("WUB")
=> ["", "", "I", "AM", "", "X"]



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

Heading or trailing white spaces should be removed.

More than one wub should be replaced with only one space


===================================================================================================
*** Data Structure:***

Next determine what data structures you will work with to convert the input to the desired output.

THE CHIEF CONSIDERATIONS HERE are your intended programming language and your mental model.

Are you going to use arrays, hashes, etc?

Your data structure will influence your program.


song_decoder/lyrics = song.split/ lyrics.select!/lyrics.join(' ')

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


Define the method `song_decoder` with one parameter, `song`.

Initialize the local variable lyrics and assign it with the return vale of song with the .split
method called. The split method should have one argument, 'WUB'.

lyrics calls the .select! method and passes a `do..end` block to it as an argument. 

The `do..end` block has one parameter, lyric.

Within the block, lyrics !-= ""

THe local variable lyrics invokes the join method using the . operator and passes a ' ' string object
to it as an argument.


=end


# Code:


def song_decoder(song)
	lyrics = song.split('WUB')
	lyrics.select! do |lyric|
		lyric != ""
	end
	lyrics.join(' ')
end

p song_decoder("AWUBWUBWUBBWUBWUBWUBC")
p song_decoder("WUBAWUBBWUBCWUB")