# Given a positive integer n, calculate the following sum:

# n + n/2 + n/4 + n/8 + ...

# All elements of the sum are the results of integer division.
# Example

# 25  =>  25 + 12 + 6 + 3 + 1 = 47

def halving_sum(n)
  sum = n
  division = 2
  loop do
    result = n / division
    sum += result
    break if result <= 1
    division *= 2
  end
  sum
end