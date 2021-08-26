#  Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.
# Example

# For n = 152, the output should be 52;

# For n = 1001, the output should be 101.
# Input/Output

#     [input] integer n

#     Constraints: 10 ≤ n ≤ 1000000.

#     [output] an integer


def delete_digit(n)
  digits = n.to_s.chars
  results = []
  index_count = 0
    loop do
      result = []
      break if index_count > digits.length - 1
      digits.each_with_index do |char, index|
         next if index == index_count
          result << char
      end
      results << result.join.to_i
      index_count += 1
    end
  results.max
end