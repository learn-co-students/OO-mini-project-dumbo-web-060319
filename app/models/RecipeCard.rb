class RecipeCard
    attr_accessor :user_name, :recipe_instance, :date, :rating

    @@all = []

  def initialize(name_instance, recipe_instance, date, rating)
    @user_name = user_name
    @recipe_instance = recipe_instance
    @date = date
    @rating = rating
    @@all << self
  end


  #Class Methods
  def self.all
    @@all
  end

end