AUTH_COMMANDS = ['PUSH', 'POP', 'PRINT', 'MULT', 'ADD', 'DIV', 'SUB', 'MOD']

def print_reg(current_reg)
	puts "#{current_reg}"
end

def push_reg(current_reg, stack)
	stack << current_reg.dup
end 

def multiply_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i * stack.pop.to_i).to_s
end

def add_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i + stack.pop.to_i).to_s
end

def pop_from_stack(current_reg, stack)
	current_reg.replace stack.pop
end

def divide_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i / stack.pop.to_i).to_s
end

def mod_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i % stack.pop.to_i).to_s
end

def sub_pop_with_reg(current_reg, stack)
	current_reg.replace (current_reg.to_i - stack.pop.to_i).to_s
end

def detect_invalid_token(string_arr, invalid_tokens)

	string_arr.each do |item|
		if AUTH_COMMANDS.include?(item) == false && item != item.to_i.to_s
			invalid_tokens << item
		end
	end

		puts "Invalid token detected." if invalid_tokens.empty? == false
			
end


def minilang(str)

	str_arr = str.split

	stack = []

	invalid_tokens = []

	register = '0'

	detect_invalid_token(str_arr, invalid_tokens)

	if invalid_tokens.empty? 
		str_arr.each do |current_command|
			if current_command == current_command.to_i.to_s
				register.replace current_command
			elsif current_command == 'PRINT'
				print_reg(register)
			elsif current_command == 'PUSH'
				push_reg(register, stack)
			elsif current_command == 'MULT'
				multiply_pop_with_reg(register, stack)
			elsif current_command == 'ADD'
				add_pop_with_reg(register, stack)
			elsif current_command == 'POP'
				pop_from_stack(register, stack)
			elsif current_command == 'DIV'
				divide_pop_with_reg(register, stack)
			elsif current_command == 'MOD'
				mod_pop_with_reg(register, stack)
			elsif current_command == 'SUB'
				sub_pop_with_reg(register, stack)
			end
		end
	end

end 


#RESULTS:

minilang('6 PUSH')

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')

minilang('')

p minilang('6 PUSH HELLO')



