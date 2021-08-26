
# Solution:
def rotate_rightmost_digits(num, places)
	num_str = num.to_s
	index = num.digits.length - places 
	section_to_rotate = num_str.slice!(index..-1)
	slice = section_to_rotate[1..-1]
	slice << section_to_rotate[0]
	num_str << slice
	num_str.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917