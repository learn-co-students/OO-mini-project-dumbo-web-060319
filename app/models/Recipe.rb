class Recipe

    attr_accessor :recipe, :recipe_cards, :user, :ingredient, :recipe_ingredient
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end  

    def self.all
        @@all
    end

    def users
        RecipeCard.all.select do |card| 
            if card.recipe == self
                return card.user
            end
        end
    end 

    def ingredients
        RecipeIngredient.all.select do |single_ingredient|
            if single_ingredient.recipe == self
                return ingredient 
            end
        end
    end   
    
   


end