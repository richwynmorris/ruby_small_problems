# you have to create a method that takes a positive integer and returns the next bigger number formed by the same digits.
  
# 12 == 21
# 513 = 531
# 2017 = 2071
# if no bigger digit return -1

  
# input: a positive integer
# output: the next biggest integer using the same digits
# Rules: if there is no bigger integer return - 1
#        return -1 if all the numbers are the same
#        if the number is already sorted in its highest possible iteration, return -1

# Algorithm:
#     we will return -1 if all the digits are the same. 
#     we will return - if the digits after being sorted are in the same state as the original integer
    
#     intialiaze a local variable called combinations with the return value of the possibl permutations
         
#     make the combinations whole digits by iterating over each combination and transforming it to a string and then to     a integer
      
#     iterate over the combinations and select the combination that is the current number
#       select the index + 1
#     end
         
  

def next_bigger_num(num)
  return -1 if num if num.digits.all? {|digit| digit == num[0]}
  return -1 if num.digits.sort! {|a,b| b <=> a}.join.to_i == num
  
  combinations = num.digits.permutation(num.digits.length).to_a
  
  combinations.map! do |arr|
    arr.join.to_i
  end.sort!
  
  combinations.each.with_index do |number, index|
    return combinations[index + 1] if number == num
  end
  
end
  
p next_bigger_num(9)
p next_bigger_num(12)
p next_bigger_num(513)
p next_bigger_num(2017)
p next_bigger_num(111)
p next_bigger_num(531)
p next_bigger_num(123456789)