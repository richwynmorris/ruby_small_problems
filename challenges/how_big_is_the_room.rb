=begin


How big is the room?

Build a program that asks a user for the length and width of a room in meters and then 
displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).


=end

def room_size
  puts 'Enter the length of the room in meters:'
  length = gets.chomp.to_i
  puts 'Enter the width of the room in meters:'
  width = gets.chomp.to_i
  square_meters = length.to_f * width.to_f
  square_feet = 10.7639 * square_meters
  puts "The area of the room is #{square_meters} (#{square_feet.round(2)} sqaure feet)."
end

room_size