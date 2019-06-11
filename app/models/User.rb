class User
  attr_accessor :user_name

    @@all = []

  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user_name == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    Allergy.all.select do |allergy|
      allergy.user == self
    end
  end

  def top_three_recipes
    recipes.sort_by{|as| as.rating}.reverse[0..2]
  end

  def most_recent_recent
    recipes[-1]
  end

  #Class Methods
  def self.all
    @@all
  end


end