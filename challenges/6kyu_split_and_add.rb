require 'pry'

# Task

# You will receive an array as parameter that contains 1 or more integers and a number n.

# Here is a little visualization of the process:

#     Step 1: Split the array in two:

#     {1, 2, 5, 7, 2, 3, 5, 7, 8}
#           /            \
#     {1, 2, 5, 7}    {2, 3, 5, 7, 8}

#     Step 2: Put the arrays on top of each other:

#        {1, 2, 5, 7}
#     {2, 3, 5, 7, 8}

#     Step 3: Add them together:

#     {2, 4, 7, 12, 15}

# Repeat the above steps n times or until there is only one number left, and then return the array.
# Example

# Input: {4, 2, 5, 3, 2, 5, 7}, n=2


# Round 1
# -------
# step 1: {4, 2, 5}  {3, 2, 5, 7}

# step 2:    {4, 2, 5}
#         {3, 2, 5, 7}

# step 3: {3, 6, 7, 12}


# Round 2
# -------
# step 1: {3, 6}  {7, 12}

# step 2:  {3,  6}
#          {7, 12} 

# step 3: {10, 18}


def split_and_add(arr, n)

  return arr if arr.length.eql?(1) 

  count = 0
  
  middle = arr.length / 2
  left_arr = arr.slice(0..middle - 1)
  right_arr = arr.slice(middle..-1)

  while n != count

    first_num = 0

    first_num = right_arr.shift if right_arr.length > left_arr.length

    right_arr.map!.with_index do |num, index|
      num + left_arr[index]
    end

    right_arr.prepend(first_num) if first_num != 0

    return right_arr if right_arr.length.eql?(1) && left_arr.length.eql?(1)

    middle = right_arr.length / 2
    
    left_arr = right_arr.slice(0..middle -1)
    right_arr = right_arr.slice(middle..-1)

    count += 1

  end

  left_arr + right_arr

end

# p split_and_add([4, 2, 5, 3, 2, 5, 7], 2)
# p split_and_add([1, 2, 5, 7, 2, 3, 5, 7, 8], 1)
# p split_and_add([1,2,3,4,5], 3)
p split_and_add([23,345,345,345,34536,567,568,6,34536,54,7546,456], 20)