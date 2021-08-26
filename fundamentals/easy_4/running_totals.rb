def running_totals(arr)

running_total = 0

arr.map do |num|
	running_total += num
	end
end 

p running_totals([2, 5, 13])



def running_totals(arr)

arr.map.with_index do |_ ,idx| 
	arr[0..idx].inject(:+) 
	end
end 

p running_totals([2, 5, 13])