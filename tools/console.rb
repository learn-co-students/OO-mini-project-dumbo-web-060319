require 'time'
require_relative '../config/environment.rb'

joe = User.new("Joe")
tom = User.new("Tom")

choc_cake = Recipe.new("Chocolate Cake")
rp = Recipe.new("Rice Pudding")

sugar = Ingredient.new("sugar")
peanuts = Ingredient.new("peanuts")

ri1 = RecipeIngredient.new(choc_cake, sugar)
ri2 = RecipeIngredient.new(rp, sugar)
ri3 = RecipeIngredient.new(choc_cake, peanuts)

rc1 = joe.add_recipe_card(choc_cake, Date.new(2018, 7, 27), 6)
rc2 = tom.add_recipe_card(choc_cake, Date.new(2019, 1, 2), 4)

joe_peanuts = joe.declare_allergy(peanuts)
joe_sugar = joe.declare_allergy(sugar)
tom_peanuts = tom.declare_allergy(peanuts)

binding.pry
