class RecipeCard

    attr_accessor :name, :rating, :date
    @@all = []

    def initialize(date, rating, user, recipe)
        @date = date 
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

    def date
        @date
    end    

    def rating
        @rating
    end  

    def user
        @user
    end

    def recipe
        @recipe
    end
    
end