require_relative '../config/environment.rb'

user1 = User.new
pizza = Recipe.new("pizza")
cheese = Ingredient.new
peanut = Ingredient.new
sauce = Ingredient.new

allergy1 = Allergy.new("cheese", cheese)
allergy2 = Allergy.new("cheese", cheese)
allergy3 = Allergy.new("peanut", peanut)
allergy4 = Allergy.new("peanut", peanut)
allergy5 = Allergy.new("peanut", peanut)

user1.add_recipe_card(pizza,"01-01-10", 5)

pizzacheese = RecipeIngredient.new(cheese, pizza)
pizzasauce = RecipeIngredient.new(sauce, pizza)

binding.pry
