# Pair of gloves

# Winter is coming, you must prepare your ski holidays. The objective of this kata is to determine the number of pair of gloves you can constitute from the gloves you have in your drawer.

# A pair of gloves is constituted of two gloves of the same color.

# You are given an array containing the color of each glove.

# You must return the number of pair you can constitute.

# You must not change the input array.

# Example :

# my_gloves = ["red","green","red","blue","blue"]
# number_of_pairs(my_gloves) == 2;// red and blue

# red_gloves = ["red","red","red","red","red","red"];
# number_of_pairs(red_gloves) == 3; // 3 red pairs

# Input: an array of colours, each representing a singular glove
# Output: the integer of pairs you can gather from the array of gloves

# Mental Model:
# iterate through the array.uniq and count the number of gloves for each colour
# store this data in a hash
# iterate through the hash and divide each value by 2
# return the sum of the values in the hash
  
# Algorithm:
# initialize a local variable pairs_of_gloves with the value of 0
# initialize the variable num_of_gloves as an empty hash
# invoke the uniq method on the array and iterate through the elements
#   - in the block, count the number of times this element in appears in original array
#   - push the results to num_of_gloves
# iterate through the hash
#   -take each value divide it by 2 and push the number to pairs_of_gloves
# return pair_of_gloves
  

def number_of_pairs(gloves)
  pairs_of_gloves = 0
  num_of_gloves = Hash.new
  
  gloves.uniq.each do |glove|
    glove_num = gloves.count(glove)
    num_of_gloves[glove] = glove_num
  end
  
  num_of_gloves.each do |k,v|
    pairs_of_gloves += v / 2
  end
  
  pairs_of_gloves
end

my_gloves = ["red","green","red","blue","blue"]
p number_of_pairs(my_gloves) == 2