require_relative '../config/environment.rb'

choc = Recipe.new("Chocolate cake")
chicken_stir_fry = Recipe.new("Chicken stir fry")
chocolate_ice_cream = Recipe.new("Chocolate Ice Cream")
chip_cookies = Recipe.new("Chocolate Chip Cookies")

salt = Ingredient.new("Salt") 
chicken = Ingredient.new("Chicken Breast")
sugar = Ingredient.new("Sugar")
flour = Ingredient.new("Flour")
chocolate = Ingredient.new("Chocolate")
cheese = Ingredient.new("Cheese")

richard = User.new("Richard")
irina = User.new("Irina")
chris = User.new("Chris Bell")


cake = richard.add_recipe_card(choc, "Jun 7th", 8)
cake2 = irina.add_recipe_card(choc, "Jun 8th", 8)
stir = richard.add_recipe_card(chicken_stir_fry, "April 1st", 7)
ice_cream = richard.add_recipe_card(chocolate_ice_cream, "Feb 2nd", 9)

chip_cookies.add_ingredients([sugar, chocolate, flour])


allergy1 = richard.declare_allergy(cheese)








binding.pry
