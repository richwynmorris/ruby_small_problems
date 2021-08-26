=begin
  
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.

Example:

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

=end

def tip_calculator
  puts 'What is the bill?'
  bill = gets.chomp.to_i

  puts 'What is the tip percentage?'
  percentage = gets.chomp.to_i

  tip = (bill / 100).to_f * percentage.to_f

  puts "The tip is £#{tip}"
  puts "The total is £#{(tip + bill).to_f}"

end

tip_calculator