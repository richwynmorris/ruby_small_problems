# Create a function named divisors/Divisors that takes an integer n > 1 and returns an array with all of the integer's divisors(except for 1 and the number itself), from smallest to largest. If the number is prime return the string '(integer) is prime' (null in C#) (use Either String a in Haskell and Result<Vec<u32>, String> in Rust).
# Example:

# divisors(12) # should return [2,3,4,6]
# divisors(25) # should return [5]
# divisors(13) # should return "13 is prime"

def divisors(num)
  divisors_results = [] 
  2.upto(num - 1) do |n|
    divisors_results << n if num % n == 0
  end
  return "#{num} is prime" if divisors_results.empty?
  divisors_results
end
 
p divisor(13)