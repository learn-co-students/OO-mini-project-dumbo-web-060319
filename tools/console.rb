require_relative '../config/environment.rb'

brandon = User.new("brandon")
sean = User.new("Ned StarK")
jimmy = User.new("Jimmy")
wind = User.new("Wind")
pasta = Recipe.new()
pizza = Recipe.new()
burger = Recipe.new()


pasta.name = "pasta"
pizza.name = "pizza"
burger.name = "burger"

brandon.add_recipe_card(pasta, "september 19", 9000)
sean.add_recipe_card(pizza, "august 3584th", 3567239156)
sean.add_recipe_card(burger, "june 8", 353)
jimmy.add_recipe_card(burger, "whatever", 313123123)
wind.add_recipe_card(burger, "yoohoo", 13134524)

lettuce = Ingredient.new()
tomato = Ingredient.new()
grass = Ingredient.new()
whatever = Ingredient.new()
lettuce.name = "lettuce"
tomato.name = "tomato"
grass.name = "grass"
whatever.name = "whatever"
RecipeIngredient.new(burger, lettuce)
RecipeIngredient.new(pizza, tomato)
RecipeIngredient.new(burger, tomato)
Allergy.new(brandon, lettuce )
Allergy.new(sean, tomato)
Allergy.new(jimmy, lettuce)
x=[]
x.push(grass)
x.push(whatever)
burger.add_ingredients(x)
binding.pry
