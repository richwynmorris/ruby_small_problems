
# Rotation (Part 2)

# Write a method that can rotate the last n digits of a number. For example:

# rotate_rightmost_digits(735291, 1) == 735291
# rotate_rightmost_digits(735291, 2) == 735219
# rotate_rightmost_digits(735291, 3) == 735912
# rotate_rightmost_digits(735291, 4) == 732915
# rotate_rightmost_digits(735291, 5) == 752913
# rotate_rightmost_digits(735291, 6) == 352917

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# Mental Model
# slice the number of digits at the end.
# slice the first number from the slice, prepend this to original slice
# push slice back to original value.
# return value.

def rotate_array(array)
  first_value = array.slice(0)
  other_values = array.slice(1..-1)
  other_values << first_value
end

def rotate_rightmost_digits(number, num_to_rotate)
  numbers = number.digits.reverse
  end_slice = numbers.slice!(-num_to_rotate..-1)
  rotated_slice = rotate_array(end_slice)
  numbers << rotated_slice
  numbers.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917