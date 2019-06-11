class RecipeIngredient
  attr_accessor :recipe_instance, :ingredient_instance

  @@all = []

  def initialize(recipe_instance, ingredient_instance)
    @recipe_instance = recipe_instance
    @ingredient_instance = ingredient_instance
    @@all << self
  end

  def self.all
    @@all
  end

end
