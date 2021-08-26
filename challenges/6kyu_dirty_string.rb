require 'pry'

# Input: String which consists of two positive numbers (doubles) and exactly one operator like +,-,*,/, always between these numbers. The string is dirty, which means that there are different characters inside too, not only numbers and the operator. You have to combine all digits left and right, perhaps with "." inside (doubles) and to calculate the result which has to be rounded to an integer and converted to a string at the end.

# Easy example:

# Input: "gdfgdf234dg54gf*23oP42"
# Output: "54929268" (because 23454*2342=54929268)

# First there are some static tests, later on random tests too...


#Input: dirty string
#output: numerical values - operation - numerical values = result.
#         result as string

# Mental Model: 
# make the string characters
# iterate through the characters and check if the character is a number or an operator
#  -regex?
# push the number to a string called first num
# push the operator to a string called operator
# if the number's index is greater than the operator index, push to second num
# perform operation with each variable as to_i
# capture result, convert to_s

#Algorithm:
# def method calculate_str, one param st
# first_num = ''
# operator = ''
# second_num = '
# characters = str.chars
# characters.each
# if char.match? (0-9) && operator != '' push to second_num
# elsif char.match?(/[0-9]/) push to first_num
# elsif char.match? (/[+-/%*]/) put to operator
# result = eval first_num + operator + second_num
# result.to_i


def calculate_str(st)
  first_num = ''
  operator = ''
  second_num = ''
  
  characters = st.chars
  
  characters.each do |char|
    if char.match?(/[0-9]/) or char.eql?('.')
      if operator == ''
        first_num << char
      else
        second_num << char
      end
    elsif char.match?(/(\+|-|\*|\/)/)
      operator << char       
    else
      next
    end
  end
  result = eval first_num + operator + second_num
  result.round.to_i.to_s
end

p calculate_str(";$%§fsdfsd235??df/sdfgf5gh.000kk0000")