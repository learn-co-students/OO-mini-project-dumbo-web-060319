
class RecipeCard 
    @@all = [] 
    attr_accessor :all, :date, :rating, :user, :recipe

    def initialize(user, recipe)
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