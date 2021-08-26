# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'

def expanded_form(num)
  results = []
  list_of_chars = num.to_s.chars
  
  list_of_chars.each_with_index do |number, index|
    if number == '0'
      next
    else
      times_by = '1' 
      list_of_chars.slice(index...-1).length.times do
        times_by << '0'
      end      
    results << (number.to_i * times_by.to_i).to_s
    end
  end
  results.join(' + ')
end

p expanded_form(70304)