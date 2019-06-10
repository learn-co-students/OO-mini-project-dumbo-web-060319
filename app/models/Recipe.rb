require "pry"
class Recipe
  @@all=[]

def initialize
  @@all << self
end
  def self.all
    @@all
  end

  def self.most_popular
    hash=Hash.new(0)
    arr=RecipeCard.all.map{|r_c_ins| r_c_ins.recipe}
    arr.each {|r_ins| hash[r_ins]+=1}
    hash.max_by {|k,v| v}[0]

  end

  def users
    arr=RecipeCard.all.select{|rc_instance| rc_instance.recipe==self}
    arr.map{|users_instance| users_instance.user}

  end

  def ingredients
    arr=RecipeIngredient.all.select{|r_i_ins| r_i_ins.recipe==self}
    arr.map{|r_i_ins| r_i_ins.ingredient}
  end

  def allergens
    arr=RecipeIngredient.all.select{|r_i_ins| r_i_ins.recipe==self}
    arr_recipe_ingredient=arr.map{|r_i_ins| r_i_ins.ingredient}
    all_allergy_ingredient=Allergy.all.map{|al_ins| al_ins.ingredient}
    return1=arr_recipe_ingredient.flatten.select{|ing_ins| all_allergy_ingredient.include?(ing_ins)}
    return1

  end

  def add_ingredients(ingredients)
    new=RecipeIngredient.new
    new.ingredient=ingredients
    new.recipe=self
  end
end
