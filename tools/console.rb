require_relative '../config/environment.rb'


user1 = User.new("Tony")
user2 = User.new("Wacky")
user3 = User.new("Bozo")

recipe1 = Recipe.new("Apple pie")
recipe2 = Recipe.new("Apple omelet")
recipe3 = Recipe.new("Apple soup")

ingredient1 = Ingredient.new("apple")
ingredient2 = Ingredient.new("egg")
ingredient3 = Ingredient.new("broth")

recipecard1 = RecipeCard.new(101, 7, user1, recipe1)
recipecard2 = RecipeCard.new(310, 8, user3, recipe2)
recipecard3 = RecipeCard.new(711, 2, user1, recipe3)
recipecard4 = RecipeCard.new(803, 10, user1, recipe1)
recipecard5 = RecipeCard.new(908, 9, user1, recipe2)

recipeingredient1 = RecipeIngredient.new(recipe1, ingredient1)
recipeingredient1 = RecipeIngredient.new(recipe2, ingredient2)
recipeingredient1 = RecipeIngredient.new(recipe3, ingredient3)

binding.pry
