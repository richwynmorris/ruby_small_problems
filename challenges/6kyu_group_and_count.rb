# Your goal is to write the group_and_count method, which should receive and array as unique parameter and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

# Example usage:

# input = [1,1,2,2,2,3]

# group_and_count(input)# == {1=>2, 2=>3, 3=>1}

# The following methods were disabled:

# Array#count
# Array#length

def group_and_count(input)
  return nil if input == nil
  
  hash_result = {}
  uniq_chars = input.uniq
  
  uniq_chars.each do |char|
      hash_result[char] = 0
  end
  
  input.each do |num|
    hash_result[num] += 1
  end
  
  return nil if hash_result.empty?
  hash_result
end
