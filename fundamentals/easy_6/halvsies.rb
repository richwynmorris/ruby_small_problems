def halvsies(arr)
	new_arr = [[],[]]

	index = 0

	half_way = arr.length / 2
	
	if arr.length.even?
		until index == half_way
			item = arr.shift
			new_arr[0] << item
			index += 1
		end
	elsif arr.length.odd?
		half_way += 1 
		until index == half_way
			item = arr.shift
			new_arr[0] << item
			index += 1
		end
	end

	arr.each do |element|
		new_arr[1] << element
	end

	new_arr

end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]