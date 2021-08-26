def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# The error here was that odd_count needed to use the eql operator == on line 5, 
# so that when the variabe odd_count is assigned the returned integer value from
# the .count method, if it is eql to the integer 3 on line 5, it will return an true.
# The last method call for valid_series? has 1 integer. As a result, the method now returns false.

