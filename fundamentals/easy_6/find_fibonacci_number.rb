def find_fibonacci_index_by_length(num)
  index = 0
  fib_arr = [0,1]

  loop do 
    break if fib_arr[-1].to_s.length == num

    fib_arr << fib_arr[index] + fib_arr[-1]
    
    index += 1
  end

  return fib_arr.find_index {|i| i == fib_arr[-1]}

end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
