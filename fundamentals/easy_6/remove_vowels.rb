# The method remove_vowels is defined and the parameter arr is initialised
# When the an array is passed to the method, the .map method is invoked 
# and each string is passed to the block and assigned as to the parameter
# word as a value. 
# The .gsub method is then invoked on the value passed to the block which 
# takes two arguements the first is the string pattern AEIOUaeiou, the 
# second is the element that should be subsituted in place of the pattern arguement. 

def remove_vowels(arr)
	puts arr.map { |word| word.gsub(/[AEIOUaeiou]/, '')}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))