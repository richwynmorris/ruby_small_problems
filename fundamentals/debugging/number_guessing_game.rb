require 'pry'

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0
  binding.pry

  loop do 
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)


# The reason the program continues to iterate through itself is a result of recursion.
# The program never breaks its loop as the attempts only ever adds 1 to attempts before
# guess_number is invoked on itself again; making attempts 0. Moreover, the break mechanism 
# never reaches 3, unless 3 right answers are inputted consecutively, which is unlikely. 
# This results, in the program being stuck in a continuous loop. 

# Potential Solution: 

# def valid_integer?(string)
#   string.to_i.to_s == string
# end

# def guess_number(max_number, max_attempts)
#   winning_number = (1..max_number).to_a.sample
#   attempts = 0

#   loop do
#     attempts += 1
#     break if attempts > max_attempts

#     input = nil
#     until valid_integer?(input)
#       print 'Make a guess: '
#       input = gets.chomp
#     end

#     guess = input.to_i

#     if guess == winning_number
#       puts 'Yes! You win.'
#       break
#     else
#       puts 'Nope. Too small.' if guess < winning_number
#       puts 'Nope. Too big.'   if guess > winning_number
#     end

#   end

# end

# guess_number(10, 3)