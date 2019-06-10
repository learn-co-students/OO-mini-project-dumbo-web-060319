require_relative '../config/environment.rb'

user1 = User.new
user2 = User.new
user3 = User.new
user4 = User.new
user5 = User.new

ingredient1 = Ingredient.new
ingredient2 = Ingredient.new
ingredient3 = Ingredient.new

allergy1 = Allergy.new(user1, ingredient1)
allergy2 = Allergy.new(user2, ingredient2)
allergy3 = Allergy.new(user3, ingredient3)
allergy4 = Allergy.new(user2, ingredient1)
allergy5 = Allergy.new(user3, ingredient1)

recipe1 = Recipe.new
recipe2 = Recipe.new
recipe3 = Recipe.new
recipe4 = Recipe.new
recipe5 = Recipe.new

recipe1.add_ingredients([ingredient1, ingredient2])

recipecard1 = RecipeCard.new(user1, recipe1, 12, 5)
recipecard2 = RecipeCard.new(user1, recipe2, 9, 4)
recipecard3 = RecipeCard.new(user1, recipe3, 42, 1)
recipecard4 = RecipeCard.new(user1, recipe4, 99, 2)
recipecard5	= RecipeCard.new(user2, recipe5, 803, 3)
recipecard6 = RecipeCard.new(user2, recipe1, 12, 5)
recipecard7 = RecipeCard.new(user2, recipe1, 12, 5)

binding.pry