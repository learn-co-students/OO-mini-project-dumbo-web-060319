class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe_instance == self
    end
  end

  def ingredients
    RecipeIngredient.all.map do |ingredient|
      ingredient.ingredient_instance if ingredient.recipe_instance == self
    end
  end

  def add_ingredients(array_of_ingredients)
    array_of_ingredients.each do |ingredient|
      RecipeIngredient.new(self, ingredient )
    end
  end


  # Class Methods
  def self.all
    @@all
  end

  def self.most_popular
    @@all.sort_by { |recipe| recipe.users.length }[-1]
  end


end
