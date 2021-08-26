=begin I
n this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. 
If that value has more than one digit, continue reducing in this way until a single-digit number is produced. 
This is only applicable to the natural numbers.

Here's how it works:

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2

input: a integer
output: a integer
Rules:
   Explicit: only applicable to natural numbers. 1 >
Edge Cases: What do you do if the number is already a single digit?

Mental Model:
Take the number and split the digits into an array. invoke a loop method
break if the result < 10. Reassign the sum of the array to variable. 
return the sum of the array when loop breaks.

Algorithm:
    define a method called digital_root with one parameter, n.
    if n < 10, return n.
    return the result of n.digits.reverse to digits.
    loop method
    break if digits.sum < 10
      digits += digits.sum.digits.reverse
    end
    digits.sum
=end

def digital_root(n)
  return n if n < 10
  arr_digits = n.digits.reverse
  loop do 
    break if arr_digits.sum < 10
    arr_digits = arr_digits.sum.digits.reverse
  end
  arr_digits.sum
end



