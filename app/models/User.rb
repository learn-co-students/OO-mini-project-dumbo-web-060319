class User 

    @@all = []

    def initialize
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def recipes
        RecipeCard.all.select do |recipe| 
            #All the recipes the user has cards of 
        end    
    end

    def add_recipe_card(recipe, date, rating)
        recipe_card = RecipeCard.new(recipe, date, rating)
        recipe_card.user = self
    end 

    def declare_allergy(ingredient)
        allergy = Allergy.new(ingredient) #check back for arguments/ initialization
    end 

    def allergens
        Allergy.all.select do |allergy|
            #Return all allergens the user has
        end
    end 

    def top_three_recipes
        RecipeCard.all.select do |recipe_card|
            #return top 3 highest rated recipes for this user
        end
    end 

    def most_recent_recipe
        RecipeCard.all.select do |recipe_card|
           #look through date to find most recent one for user
        end
    end

end 