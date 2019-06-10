class Recipe

  @@all = []
  attr_accessor :name

  def initialize (name)
  	@name = name
    @@all << self
  end 
  #returns all of the recipe instance
  def self.all
    @@all
  end
 
  #should return the recipe instance with the highest number of users
  def self.most_popular
    max = 0
    max_recipe = nil
    RecipeCard.all.each do |card|
        if card.count > max
            max = card.count
            max_recipe = card.recipe
        end 
    end 
    max_recipe
  end 
 
  #should return the user instances who have recipe cards with this recipe
  def users
    RecipeCard.all.select {|card| 
      card.recipe == self
    }
    RecipeCard.all.map {|card| card.user}
  end
 
  # should return all of the Ingredients in this recipe that are allergens for Users in our system.
  def ingredients
  	
  end

end