def penultimate(str)

  str_arr = str.split

  str_arr[-2]

end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'