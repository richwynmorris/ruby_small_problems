
# #     So you've found a meeting room - phew! You arrive there ready to present, and find that
# someone has taken one or more of the chairs!! You need to find some quick.... check all the other 
# meeting rooms to see if all of the chairs are in use.

# #     Your meeting room can take up to 8 chairs. need will tell you how many have been taken. 
# ou need to find that many.

# #     Find the spare chairs from the array of meeting rooms. Each meeting room array will have 
# the number of occupants as a string. Each occupant is represented by 'X'. The room array will 
# also have an integer telling you how many chairs there are in the room.

# #     You should return an array of integers that shows how many chairs you take from each room 
# in order, up until you have the required amount.

# #     example: [['XXX', 3], ['XXXXX', 6], ['XXXXXX', 9], ['XXX',2]] when you need 4 chairs:

# #     result -- > [0, 1, 3] (no chairs free in room 0, take 1 from room 1, take 3 from room 2.
#  No need to consider room 4 as you have your 4 chairs already.

# #     If you need no chairs, return 'Game On'. If there aren't enough spare chairs available, 
# return 'Not enough!'

def meeting(rooms, number)
  first_num = number.dup
  final = []
  
  return 'Game On' if number == 0
  
  rooms.map! do |sub_arr|
    occupied_chars = sub_arr[0].chars.count('X')
    sub_arr = [occupied_chars, sub_arr[1]]
    if sub_arr.reverse.reduce(:-) < 0
      0
    else
      sub_arr.reverse.reduce(:-)
    end
  end

  rooms.each do |available_seats|
    break if number == 0
    if available_seats >= number
      final << number
      number -= number
    elsif available_seats < number
      number -= available_seats
      final << available_seats
    end
  end
  
  return "Not enough!" if final.reduce(:+) < first_num
  
  final

end