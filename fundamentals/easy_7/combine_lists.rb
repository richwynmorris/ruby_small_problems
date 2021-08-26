# Solution
def interleave (arr1, arr2)
	
	new_arr = []
	
	loop do 
		break if arr1.empty? && arr2.empty?

		new_arr << arr1.shift

		new_arr << arr2.shift

	end

	new_arr

end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further exploration
def interleave (arr1, arr2)
	arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']