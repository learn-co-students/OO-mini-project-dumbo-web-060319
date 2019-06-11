require_relative '../config/environment.rb'

pepe = User.new('Pepe')
kika = User.new('Kika')
beto = User.new('Beto')
lele = User.new('Lele')
yaya = User.new('Yaya')
tito = User.new('Tito')

rice = Ingredient.new('Rice')
cinnamon = Ingredient.new('Cinnamon')
almonds = Ingredient.new('Almonds')
cardamom = Ingredient.new('Cardamom')
beans = Ingredient.new('Beans')
bay_leaves = Ingredient.new('Bay Leaves')
salt = Ingredient.new('Salt')
pepper = Ingredient.new('Pepper')
garlic = Ingredient.new('Garlic')
olive_oil = Ingredient.new("Olive Oil")
water = Ingredient.new("Water")
safron = Ingredient.new("Safron")
cummin = Ingredient.new("Cummin")
habanero = Ingredient.new("Habanero")
onion = Ingredient.new("Onion")
arugula = Ingredient.new("Arugula")
mango = Ingredient.new("Mango")
lime_juice = Ingredient.new("Lime Juice")
sea_salt = Ingredient.new("Sea Salt")

horchata = Recipe.new("Horchata")
horchata_array = [cinnamon, cardamom, almonds, rice, water]

rice = Recipe.new("Rice")
rice_array = [rice, olive_oil, safron, pepper, water]

beans = Recipe.new("Beans")
beans_array = [beans, habanero, bay_leaves, olive_oil, cummin, water, salt, pepper, garlic]

salad = Recipe.new("Salad")
salad_array = [arugula, mango, lime_juice, sea_salt, olive_oil]

binding.pry
