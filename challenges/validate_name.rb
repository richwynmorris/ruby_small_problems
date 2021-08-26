#Problem
#Given: an array containing hashes of names
#Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

#Examples:
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''

# Input: an array of hashes
# Output: a string as a list of names
# Rules:
#       names should be seperated wtih commas.
#       Last two should be seperated with ampersand.
#       If one name, no commas
#       if empty array, empty string

# Data strcture:
# array of hashes/if elsif statements to deal with edge cases/loop/return

# Algorithm:
# define method list, with one parameter name.
# define local variable 'list' and assign empty string object
# IF name.empty? return ''
# ELSIF name.length.eql 1 return name
# ELSIF name.length.eql2 return 'name & name'
# ELSIF name.length > 3 
# #---> LOOP
#      list << name << ', '
#      #BREAk
#       list << '& ' << name[-1]
# # Return list

def list(name)
	list = ""
	if name.empty?
		return ''
	elsif name.length.eql?(1)
		return name[0][:name]
	elsif name.length.eql?(2)
		return "#{name[0][:name]} & #{name[1][:name]}"
	elsif name.length > 2
		index = 0
		loop do
			break if index == name.length - 2
			list << name[index][:name] << ', '
			index += 1
		end
		list << name[-2][:name] << ' & ' << name[-1][:name]
	end
	list
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

p list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

p list([ {name: 'Bart'} ])
# returns 'Bart'

p list([])
# returns ''