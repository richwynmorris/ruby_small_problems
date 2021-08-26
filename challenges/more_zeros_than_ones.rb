=begin
	
Create a moreZeros function which will receive a string for input, and return an array (or null 
terminated string in C) containing only the characters from that string whose binary representation 
of its ASCII value consists of more zeros than ones.

You should remove any duplicate characters, keeping the first occurence of any such duplicates, 
so they are in the same order in the final array as they first appeared in the input string.

Examples

'abcde' === ["1100001", "1100010", "1100011", "1100100", "1100101"]
               True       True       False      True       False

        --> ['a','b','d']

'DIGEST'--> ['D','I','E','T']

Input: str
Output: array of binary value that have more 0's than 1s

=end

def more_zeros(s)
	characters = s.chars
	results = []
	characters.each do |letter|
		result_to_be_mod = letter.unpack1('B*')
		binary = result_to_be_mod.delete_prefix('0') if result_to_be_mod.start_with?('0')
		binary = result_to_be_mod.delete_prefix('00') if result_to_be_mod.start_with?('00')
		if binary.count('0') > binary.count('1')
			results << letter if !results.include?(letter)
		else
			next
		end
	end
	results
end 


p more_zeros('abcde')
