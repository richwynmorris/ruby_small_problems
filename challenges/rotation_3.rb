require 'pry'

# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining digits, 
# you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. 
# Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, 
# keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation 
# of that argument. You can (and probably should) use the rotate_rightmost_digits method 
# from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:

# max_rotation(735291) == 321579
# max_rotation(3) == 3
# max_rotation(35) == 53
# max_rotation(105) == 15 # the leading zero gets dropped
# max_rotation(8_703_529_146) == 7_321_609_845


def rotate_array(array)
  first_value = array.slice(0)
  other_values = array.slice(1..-1)
  other_values << first_value
end

def rotate_rightmost_digits(number, num_to_rotate)
  numbers = number.chars
  end_slice = numbers.slice!(num_to_rotate..-1)
  rotated_slice = rotate_array(end_slice)
  numbers << rotated_slice
  numbers.join
end

def max_rotation(num)
  num_str = num.to_s 
  index = 0
  loop do
    break if index == num_str.to_s.length 
    num_str = rotate_rightmost_digits(num_str, index)
    index += 1
  end
  num_str.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845