class User
  @@all=[]
  attr_accessor :name

def initialize
  @@all<< self
end
  def self.all
    @@all
  end


  def recipes
   arr=RecipeCard.all.select{|r_c_ins| r_c_ins.user == self}
   arr.map{|r_c_ins| r_c_ins.recipe}
  end

  def add_recipe_card(recipe,date,rating)
   new_recipe_card=RecipeCard.new
   new_recipe_card.recipe=recipe
   new_recipe_card.date=date
   new_recipe_card.rating=rating
   new_recipe_card.user=self
  end

  def declare_allergy(ingredient)
    new_allergy=Allergy.new
    new_allergy.user=self
    new_allergy.ingredient =ingredient
  end

  def allergens
    arr=Allergy.all.select{|all_ins| all_ins.user==self}
    arr.map {|all_ins| all_ins.ingredient}
  end

  def top_three_recipes
    arr=RecipeCard.all.select{|r_c_ins| r_c_ins.user==self}
    sorted_arr=arr.sort_by {|ins| ins.rating}
    return sorted_arr[arr.length-3..arr.length-1]
  end

  def most_recent_recipe
    self.recipes[-1]
  end


end
