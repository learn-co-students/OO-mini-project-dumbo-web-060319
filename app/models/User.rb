


class User 

    attr_accessor :recipes, :all, :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all 
        return @@all 
    end

    def recipes 
        RecipeCard.all.select do |formula|
            formula.user == self 
        end
    end

    def add_recipe_card(recipe_itself, recipe_date, recipe_rating)
        new_recipe = RecipeCard.new(self, recipe_itself)
        new_recipe.date = recipe_date
        new_recipe.rating = recipe_rating
    end

    def declare_allergy(ingredient)
    end

    def allergens
        Allergy.all.select do |x|
            x.user == self 
        end
    end

    def top_three_recipes 
        
    end
    
    def most_recent_recipe 
         Recipe[-1]
    end
end
