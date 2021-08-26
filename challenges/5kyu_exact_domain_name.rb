# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") == "github" 
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

def domain_name(str)
  domain_name = ''

  if str.match?(/www\.|http:\/\/|https:\/\//)
    str.gsub!(/www\.|http:\/\/|https:\/\//, '')
  end
    
  str.chars.each do |char|
    break if char == '.'
    domain_name << char
  end
  domain_name
end
    

p domain_name("http://github.com/carbonfive/raygun") #== "github" 
p domain_name("http://www.zombie-bites.com") #== "zombie-bites"
p domain_name("https://www.cnet.com") #== "cnet"