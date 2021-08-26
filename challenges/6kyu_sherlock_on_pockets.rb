# Sherlock has to find suspects on his latest case. He will use your method, dear Watson. Suspect in this case is a person which has something not allowed in his/her pockets.

# Allowed items are defined by array of numbers.

# Pockets contents are defined by map entries where key is a person and value is one or few things represented by an array of numbers (can be nil or empty array if empty), example:

# pockets = { 
#   bob: [1],
#   tom: [2, 5],
#   jane: [7]
# } 

# Write method which helps Sherlock to find suspects. If no suspect is found or there are no pockets (pockets == nil), the method should return nil.

# find_suspects(pockets, [1, 2]) # => [:tom, :jane] bob has allowed item, tom has one not allowed item and jane has one not allowed item
# find_suspects(pockets, [1, 7, 5, 2]) # => nil
# find_suspects(pockets, []) # => [:bob, :tom, :jane] 
# find_suspects(pockets, [7]) # => [:bob, :tom]

# Input: a hash that contains, each potential suspect and the contents of their pocket. an array which allows for allowed items.
# output: an array of keys which represent the potential suspects
  
# rules: 
#      if the allowed items are empty, everyone is a suspect
#      if all the suspects only have allowed items then return nil
#      if the suspect has one, not allowed item, they are still a suspect.
         

# Algorithm:
# - if pockets empty than return pockets.keys
# - initaliaze a variable called suspects_pockets with an empty arra
# - iterate through our suspects 
# - iterate through the values, if the value does not match any of the allowed items 
#   push the suspect(key) to our suspects_results
# - return suspects_results
  

def find_suspects(pockets, allowed_items)
  pockets.compact!
  return nil if pockets.values.all? {|value| value == nil || value == []}
  suspects_pockets = []
  
  pockets.each do |k, v|
    v.each do |num|
      suspects_pockets << k if !allowed_items.include?(num)
    end
  end
  
  return nil if suspects_pockets.empty?
  suspects_pockets.uniq
end