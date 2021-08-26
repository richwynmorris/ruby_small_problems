arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"]

# There are two solutions to this problem. The first is to reassign the 
# arr to a new object.

arr = ["9", "8", "7", "10", "11"]
new_arr = arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

p new_arr

# The second is to instead use braces rather than a do and end block.
arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }