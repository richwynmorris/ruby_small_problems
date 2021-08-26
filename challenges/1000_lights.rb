

# You have a bank of switches before you, numbered from 1 to n. Each switch is 
# connected to exactly one light that is initially off. You walk down the row 
# of switches and toggle every one of them. You go back to the beginning, and 
# on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass,
#  you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
#  You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns
# an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

#     round 1: every light is turned on
#     round 2: lights 2 and 4 are now off; 1, 3, 5 are on
#     round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
#     round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
#     round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


# input: total number of switches, int.
# output: an array of switches that are still on after switches.

# mental model:
# create a hash object with each light and its state as false
# loop the number of times that their are switches. 
# divisible = 1 
# if the switch is remainder is 0 after divisble switch the status
# add 1 to divisible
# break if divisible == num 


def thousand_lights(num)
  result = []
  lights = Hash.new(false)
  1.upto(num) { |num| lights[num] = true }
  divisible = 2

  loop do
    break if divisible > num 
    lights.each do |light, state|
      lights[light] = !state if light % divisible == 0
    end
    divisible += 1
  end

  lights.each do |light, state|
    result << light if state.eql?(true)
  end

  result

end

p thousand_lights(5)
p thousand_lights(10)