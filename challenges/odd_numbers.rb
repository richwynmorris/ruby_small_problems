
=begin
Odd Numbers

Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
=end

(1..99).to_a.each do |num|
  puts num if num.odd?
end 
