# Solution:
def multiply_list(arr, arr2)
  index = 0

  result_arr = []

  arr.each do |num|
    result_arr << num * arr2[index]
    index += 1
  end

  result_arr

end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further exploraiton:
def multiply_list(arr, arr2)

  arr.zip(arr2).map { |a, b| a * b }

end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]