=begin
	
The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a 
hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values 
that fall out of that range must be rounded to the closest valid value.

Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

The following are examples of expected output values:

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3

Input: 3 numbers that represent rgb.
Output: string of Hex value.
Rules: numbers that fall out of range must be rounded to nearest valid value
       answer should always be 6 characters long.

Mental Model:
create an array with hexadecimal characters. 0..9,a..f
create a string object called result
pass all three numbers to an array at floating point numbers
pass each number to the block
divide the float number by 16 and assign the value to first
divie the floar number by 16 and subtract first.floor * 16 - assign the second
push the the array[first.floot] and array[second]
end

Algorithm:
   Define a method called rgb with 3 parameters a,b, and c.
   intialialise a local variable hexdecimal and assign it with the value [0..9,a..f]
   create a string object called result to capture the results
   intialize a local variable called numbers and add all three arguments.
   invoke the each method on numbers and pass each number to the block
   within the block initalize a local variable called first_char and assign it the 
   return value of number.to_f / 16 
   intialize a local variable called secon char and invoke the same method but subtract 
   first_char.floor * 16
   index the index position for the two characters and result the value from hexdecimal. 
   push these characters to the results string.
   return the string.

=end

def rgb(a,b,c)
	hexadecimal = ['0','1','2','3','4','5','6','7','8','9', 'A', 'B', 'C', 'D', 'E', 'F']
	result = ''
	numbers = [a,b,c]
	numbers.each do |num|
		first_char = num.to_f / 16.0
		second_char = 16 * (first_char - first_char.floor)
		if first_char > 15
			result << 'FF' 
		elsif second_char > 15
			result << 'FF' 
		else
			result << hexadecimal[first_char.floor]
			result << hexadecimal[second_char.floor]
		end
	end

	p result
end

rgb(255, 255, 255) # returns FFFFFF
rgb(255, 255, 300) # returns FFFFFF
rgb(0,0,0) # returns 000000
rgb(148, 0, 211) # returns 9400D3

