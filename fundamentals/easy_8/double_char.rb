# Solution using .map
def repeater(str)

	str_arr = str.chars

	str_arr.map! do |char|
		char.replace "#{char}#{char}"
	end

	str_arr.join

end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# Solution using .zip and .dup
def repeater_2(str)

	original = str.chars

	duplicate = original.dup

	original.zip(duplicate).join

end

p repeater_2("Good job!") == "GGoooodd  jjoobb!!"