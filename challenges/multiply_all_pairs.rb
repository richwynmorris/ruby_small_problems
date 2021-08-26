=begin
	
Write a method that takes two Array arguments in which each Array contains a list of numbers, and 
returns a new Array that contains the product of every pair of numbers that can be formed between 
the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Mental Model:
Call the first value arr1 and then iterate through arr2
times first value by each element of arr2 and send the result
to an array.
increase the index of arr1 and repeat the process. 
sort the array from smallest integer to highest
return the results.

Algorithm:
Define a method called mulitply_all_pairs with two parameters, arr1 and arr 2
intialize a variable called 1_index and asign the value of 0. 
intialize a variable called results assign an empty array
invoke a loop method, break if arr1 returns nils.
invoke an each method and iterate over arr2.
within the block times arr1[1_index] * current number.
push the result to results
increase 1_index += 1
loop and repeat
break if 1_index == nil. 
return results.sort

=end

def multiply_all_pairs(arr1, arr2)
	index = 0
	results =[]
	loop do 
		break if arr1[index] == nil
		arr2.each do |num|
			results << arr1[index] * num
		end
		index += 1
	end
	results.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]