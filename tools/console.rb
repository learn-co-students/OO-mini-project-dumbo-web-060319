require_relative '../config/environment.rb'

# Users
timmy = User.new("Timmy")
tammy = User.new("Tammy")
jimmy = User.new("Jimmy")
sammie = User.new("Sammie")
cook = User.new("Chef Cook.")

# Ingredients
water = Ingredient.new("water")
milk = Ingredient.new("milk")
beer = Ingredient.new("beer")
oil = Ingredient.new("oil") # olive oil

cheese = Ingredient.new("cheese")
eggs = Ingredient.new("eggs")

flour = Ingredient.new("flour")
rice = Ingredient.new("rice")
onions = Ingredient.new("onions")
bread = Ingredient.new("bread")
potatoes = Ingredient.new("potatoes")
pasta = Ingredient.new("pasta")

beans = Ingredient.new("beans")
carrots = Ingredient.new("carrots")
broccoli = Ingredient.new("broccoli")
cucumbers = Ingredient.new("cucumbers")
spinach = Ingredient.new("spinach")
tomatoes = Ingredient.new("tomatoes")

apples = Ingredient.new("apples")
oranges = Ingredient.new("oranges")
apples = Ingredient.new("apples")
strawberries = Ingredient.new("strawberries")
lime = Ingredient.new("lime")
lemon = Ingredient.new("lemon")

chocolate = Ingredient.new("chocolate")
coffee_beans = Ingredient.new("coffee beans")
vanilla = Ingredient.new("vanilla")
mint = Ingredient.new("mint")

chicken = Ingredient.new("chicken")
bacon = Ingredient.new("bacon")
beef = Ingredient.new("beef")
fish = Ingredient.new("fish")

sugar = Ingredient.new("sugar")
salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
basil = Ingredient.new("basil")

# Group Ingredients
breakfast1 = [eggs, salt, pepper, bacon, cheese, onions, bread] # Bacon and eggs w/ toast
breakfast2 = [eggs, flour, sugar, milk] # Pancakes

lunch1 = [fish, potatoes, flour, eggs, salt, pepper, lemon, beer] # Beer battered Fish n chips
lunch2 = [beef, pasta, tomatoes, basil, salt, pepper, spinach, cheese, carrots, onions] # rigatoni bolognese

dinner1 = [rice, beans, chicken, onions, salt, pepper] # Arroz con Pollo
dinner2 = [beef, potatoes, milk, carrots, pepper, lemon] # steak n mashed potatoes

terrible1 = [milk, eggs, beer, water, pepper, salt] # scary shake
terrible2 = [beef, chicken, bacon, flour, sugar, water] # scary loaf

shake1 = [strawberries, milk]
shake2 = [chocolate, milk]
shake3 = [vanilla, milk]

drink1 = [water, mint]
drink2 = [water, coffee_beans]




# Recipes
pancakes = Recipe.new("pancakes")
bec = Recipe.new("Bacon and eggs with toast")

fnc = Recipe.new("Fish n Chips")
rb = Recipe.new("Rigatoni Bolonese")

pollo = Recipe.new("arroz con pollo")
fancy = Recipe.new("Steak n Mashed Potatoes")

raw = Recipe.new("raw egg shake")
woah = Recipe.new("meat loaf")

straw = Recipe.new("Strawberry Shake")
choco = Recipe.new("Chocolate Shake")
villa = Recipe.new("Vanilla Shake")

tea = Recipe.new("Mint Tea")
coffee = Recipe.new("Coffee")


# Add ingredients to recipes
pancakes.add_ingredients(breakfast1)
bec.add_ingredients(breakfast2)
fnc.add_ingredients(lunch1)
rb.add_ingredients(lunch2)
pollo.add_ingredients(dinner1)
fancy.add_ingredients(dinner2)
raw.add_ingredients(terrible1)
woah.add_ingredients(terrible2)


# Create Recipie Cards
timmy.add_recipe_card(bec, "07:10:2019", 7)
timmy.add_recipe_card(straw, "07:10:2019",5)
timmy.add_recipe_card(choco, "07:10:2019", 8)
timmy.add_recipe_card(villa, "07:10:2019", 10)

tammy.add_recipe_card(rb, "07:10:2019", 10)
tammy.add_recipe_card(fancy, "07:10:2019", 6)
tammy.add_recipe_card(tea, "07:10:2019", 7)
tammy.add_recipe_card(coffee, "07:10:2019", 5)

jimmy.add_recipe_card(pancakes, "07:10:2019", 4)

sammie.add_recipe_card(fnc, "07:10:2019", 9)
sammie.add_recipe_card(pollo, "07:10:2019", 8)

cook.add_recipe_card(raw, "07:10:2019", 2)
cook.add_recipe_card(woah, "07:10:2019", 3)

# give users horrible reactions

timmy.declare_allergy(apples)
timmy.declare_allergy(oranges)
timmy.declare_allergy(strawberries)
timmy.declare_allergy(fish)

tammy.declare_allergy(fish)

jimmy.declare_allergy(chicken)
jimmy.declare_allergy(beef)
jimmy.declare_allergy(bacon)

cook.declare_allergy(fish)

sammie.declare_allergy(apples)





binding.pry
