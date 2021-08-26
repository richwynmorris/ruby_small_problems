def triangle(num)
  star = '*'

  num.times do
    puts star.rjust(num)
    star << '*'
  end

end

triangle(5)
triangle(9)