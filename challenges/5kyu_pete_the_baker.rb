# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

# Examples:

# // must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
# // must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 

# Input: two hash objects, the first is the recipe and the second is the number of ingredients.
#        each hash object contains intergers as the values.

# output: the number of cakes that can be created from the ingredients.
  
# rules: there are no unit changes.
#        ingredients that are not present in the objects returns 0

# Mental Model:
# -check is any of the receipe keys are missing from the ingredients,
#  - if they are return zero.
# - have a running tally of number of cakes
# - loop
# - iterate through the ingredients and reassign each value - minus the current ingredients.
# - break if any of them are minus
# - break the loop if any ingredient isless that 0 
# - return the number of cakes
  
#   Algorithm:
#   Initialise a local variable called num_of_cakes and assign is to zero.
#   check for items in ingredients
#   invoke a loop method
#   iterate through ingredients
#     subtract the ingredient from the recipe requirement
#   if any of the ingredients are < 0
#     break
#   else
#     add one to the num_of_cakes
#   end
#   return the num_of_cakes
  
  
def cakes(recipe, ingredients)
  return 0 if !recipe.keys.all? {|item| ingredients.keys.include?(item)}
  num_of_cakes = 0
  loop do
    new_amount = ingredients.each_with_object({}) do |(k,v), a|
          a[k] = v -= recipe[k] if recipe.keys.include?(k)
     end
    break if new_amount.values.any? {|value| value < 0}
    num_of_cakes += 1
    ingredients = new_amount
  end
  num_of_cakes
end

p cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})