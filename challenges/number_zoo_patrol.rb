=begin 

Problem:
You're working in a number zoo, and it seems that one of the numbers has gone missing!

Zoo workers have no idea what number is missing, and are too incompetent to figure it out, so they're hiring you to do it for them.

In case the zoo loses another number, they want your program to work regardless of how many numbers there are in total.

Task:

Write a function that takes a shuffled list of unique numbers from 1 to n with one element missing (which can be any number including n). Return this missing number.

Note: huge lists will be tested.
Examples:

[1, 3, 4]  =>  2
[1, 2, 3]  =>  4
[4, 2, 3]  =>  1

Input: an array of numbers
Output: the missing integer from the sequence. 
Rules: 
      Explicit: there will always be one element missing.
      Implicit: if the pattern is complete with 1, add the last number.
                if the pattern is complete but 1 is missing, add one
                if the pattern if missing a number between, return the missing number.

=end


def find_missing_number(array)
  missing_array_sum = (array.length + 1) * (array.length + 2) / 2
  original_array_sum = array.reduce(:+)
  missing_array_sum - original_array_sum
end