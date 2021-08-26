# Complete the method which returns the number which is most frequent in the given input array. 
# If there is a tie for most frequent number, return the largest number among them.

# Note: no empty arrays will be given.
# Examples

# [12, 10, 8, 12, 7, 6, 4, 10, 12]              -->  12
# [12, 10, 8, 12, 7, 6, 4, 10, 12, 10]          -->  12
# [12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]  -->   3

def highest_rank(arr)
  item_appears_most = 0
  num_of_times = 0
  items = arr.uniq
  
  items.each do |item|      
    if arr.count(item) > num_of_times
        item_appears_most = item
        num_of_times = arr.count(item)
    elsif arr.count(item) == num_of_times
      if item > item_appears_most
        item_appears_most = item
      else
        next
      end
    end
  end

  item_appears_most
  
end

p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]) == 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]) == 12
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]) == 3