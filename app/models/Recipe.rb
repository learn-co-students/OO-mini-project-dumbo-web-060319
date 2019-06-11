class Recipe
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.most_popular
        # should return the recipe instance with the highest number 
        # of users (the recipe that has the most recipe cards)
        RecipeCard.all.map { |recipe_card| recipe_card.recipe }.mode
    end

    def users
        # should return the user instances who have recipe cards with this recipe
        RecipeCard.all.select { |recipe_card| recipe_card.user if recipe_card.recipe == self }
    end

    def ingredients
        # should return all of the ingredients in this recipe
        RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.ingredient if recipe_ingredient.recipe == self }
    end

    def allergens
        # should return all of the Ingredients in this recipe that are allergens for Users in our system.
        Allergy.all.select { |allergy| allergy.ingredient if allergy.recipe == self }
    end

    def add_ingredients(ingredients_array)
        # should take an array of ingredient instances as an argument, & associate each of those ingredients with this recipe
        ingredients_array.each { |ingredient| RecipeIngredient.new(self, ingredient) }
    end

end