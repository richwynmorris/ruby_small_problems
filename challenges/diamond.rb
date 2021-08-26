# Problem
# You need to return a string that looks like a diamond shape when printed on the screen, 
# using asterisk (*) characters. Trailing spaces should be removed, and every line must 
# be terminated with a newline character (\n).

# Return null/nil/None/... if the input is an even number or negative, as it is not 
# possible to print a diamond of even or negative size.


# Examples:
# A size 3 diamond:

#  *
# ***
#  *

# ...which would appear as a string of " *\n***\n *\n"


def diamond(num)

	return nil if num.even? || num < 0 

	odds = (1..num).to_a.select do |num|
		             num.odd?
		            end

	spaces = odds.length

	odds.each do |num|
		spaces -= 1
		puts ' ' * spaces + '*' * num + "\n"
	end

	odds.pop
	odds.reverse!

	spaces += 1

	odds.each do |num|
		puts ' ' * spaces + '*' * num + "\n"
		spaces += 1
	end

end 


diamond(71)

