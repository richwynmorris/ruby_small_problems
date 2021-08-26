def merge(arr1, arr2)
	arr1.union(arr2)
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Further exploration

def merge_2(arr1, arr2)
	arr2.each do |element|
		arr1 << element
	end

	return arr1.uniq!

end

p merge_2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]