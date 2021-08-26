# Problem
# In this kata, you will write a function that returns the positions and the values of the "peaks" (or local maxima) of a numeric array.

# For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at position 3 with a value of 5 (since arr[3] equals 5).

# The output will be returned as an object with two properties: pos and peaks. Both of these properties should be arrays. 
# If there is no peak in the given array, then the output should be {pos: [], peaks: []}.

# Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) should return {pos: [3, 7], peaks: [6, 3]} (or equivalent in 
# other languages)

# All input arrays will be valid integer arrays (although it could still be empty), so you won't need to validate the input.

# The first and last elements of the array will not be considered as peaks (in the context of a mathematical function, 
# we don't know what is after and before and therefore, we don't know if it is a peak or not).

# Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3] does not. In case of a plateau-peak, 
# please only return the position and value of the beginning of the plateau. For example: pickPeaks([1, 2, 2, 2, 1]) 
# returns {pos: [1], peaks: [2]} (or equivalent in other languages)


# Input: an array of positive integers
# output: a hash, each value is an array. 
# Rules:
#    Explicit: First and last elements do not count
#    	         in a plateau only return the first of the plateau


# Data structure: hash/array/each_with_index/push

def pick_peaks(arr)	
  hash = {"pos" => [], "peaks" => []}

  plateau = false

  return hash if arr.empty?

  arr.each_with_index do |num, index|
    if index == 0
	    next
	  elsif index == arr.length - 1
       return hash
	  elsif arr[index] > arr[(index - 1)] && arr[index] > arr[(index + 1)]
	    hash["pos"] << index
	    hash["peaks"] << num
	    plateau = false
	  elsif arr[index] == arr[(index - 1)] && arr[index] == arr[(index + 1)]
        look_ahead = index + 1
        loop do
          break if arr[look_ahead] != arr[index]
          look_ahead += 1
        end

        plateau_section = arr.slice(index - 1..look_ahead - 1)
      
        if plateau_section == arr.slice(0..look_ahead -1) || plateau_section == arr.slice(index -1..-1)
          return hash
        elsif plateau == true
          next
        else
          hash["pos"] << index -1 
	      hash["peaks"] << arr[index - 1]
	      plateau = true
        end
    end

  end

 hash

end

# p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3])
# p pick_peaks([1, 2, 2, 2, 1])
p pick_peaks([2,2,2,1,3,4,5,4])

