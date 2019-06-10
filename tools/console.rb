require_relative '../config/environment.rb'
#users
samip=User.new
gia=User.new
brandon=User.new
#recipes
rice=Recipe.new
burger=Recipe.new
tea=Recipe.new
chickenrice=Recipe.new
#recipe card
samip.add_recipe_card(burger,"jan2",6)
samip.add_recipe_card(rice,"jan1",5)
gia.add_recipe_card(tea,"jan3",4)
gia.add_recipe_card(burger,"jan4",2)
recp1=RecipeCard.new
recp1.date="jan6"
recp1.rating=8
recp1.user=brandon
recp1.recipe=tea

#ingredients
garlic=Ingredient.new
chicken=Ingredient.new
bread=Ingredient.new
cheese=Ingredient.new
water=Ingredient.new
teabag=Ingredient.new
brownrice=Ingredient.new
#recipe ingredients
burger.add_ingredients([bread,chicken,cheese])
tea.add_ingredients([teabag,water])
rice.add_ingredients([brownrice,water])
recpingre=RecipeIngredient.new
recpingre.recipe=chickenrice
recpingre.ingredient=[water,chicken,brownrice]

#allergies
gia.declare_allergy(bread)
samip.declare_allergy(cheese)
brandon.declare_allergy(cheese)
burger.allergens
samip.most_recent_recipe
binding.pry
