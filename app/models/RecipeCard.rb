class RecipeCard
    attr_accessor :user, :recipe, :date, :rating
    @@all = []

    def self.all
        @@all
    end 

    def initialize(recipe, date, rating)
        @recipe = recipe 
        @date = date 
        @rating = rating
        @@all << self
    end

    def count 
      @@all.select {|card| recipe == card.recipe}.size
    end   
end 