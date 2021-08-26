def bubble_sort!(arr)
	loop do
		index = 0
		break if arr == arr.sort
		loop do
			break if index == arr.length - 1
			if arr[index] > arr[index + 1]
				arr[index], arr[index + 1] = arr[index + 1], arr[index]
				index += 1
			elsif arr[index] == arr[index + 1] || arr[index] < arr[index + 1]
				index += 1
			end
		end
	end
	arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)