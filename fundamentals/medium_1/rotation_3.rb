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

def max_rotation(num)

	places = num.digits.length

	loop do
		break if places == 0
		num = rotate_rightmost_digits(num, places)
		places -= 1
	end

	num 

end 

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
