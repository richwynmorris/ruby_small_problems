

# Modify the method from the previous exercise so it ignores non-alphabetic characters when
# determining whether it should uppercase or lowercase each letter. The non-alphabetic
# characters should still be included in the return value; they just don't count when
# toggling the desired case.

# Example:

# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

def staggered_case(str)

  array = str.chars

  check_last_letter = ''
  
  result = array.each_with_index do |char, index|
    if index == 0
      char.upcase!
      check_last_letter = char
    elsif char.match? (/[^a-z,A-Z]/)
      next
    elsif check_last_letter == check_last_letter.upcase
      char.downcase!
      check_last_letter = char
    elsif check_last_letter == check_last_letter.downcase
      char.upcase!
      check_last_letter = char
    end
  end

  result.join

end

p staggered_case('ALL CAPS') == 'AlL cApS'   
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
