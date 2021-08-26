# Solution
def multiply_all_pairs(arr, arr2)

  product_arr = []

  loop do 
    break if arr.empty?

    current_num = arr.pop

    arr2.each do |num|
      product_arr << current_num * num
    end

  end

  product_arr.sort!

end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
