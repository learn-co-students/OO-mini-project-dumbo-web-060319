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

            # most popular
            mp = ""
            mp_val = 0
            
            # hash to store RecipeCard.Recipe and count how many times it occurs
           so_popular = {}
    
            RecipeCard.all.map { |recipe_card| 
    
                if allergic_to.has_key?(recipe_card.recipe) 
                allergic_to[recipe_card.recipe] += 1
                else
                allergic_to[recipe_card.recipe] = 1
                end
    
            }
    
            so_popular.each { |recipe, count| mp, mp_val = recipe, count if mp_val < count }
    
            mp
    end

    # Helper method to get all my recipe cards
    def recipe_cards_that_use_me
        RecipeCard.all.select { |recipe_card| recipe_card.recipe == self }
    end

    def users
        # should return the user instances who have recipe cards with this recipe
        recipe_cards_that_use_me.map{ |recipe_card| recipe_card.user }
    end

    # Helper method to get all recipe ingredients for recipe
    def my_recipe_ingredients
        RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self }
    end

    def ingredients
        # should return all of the ingredients in this recipe
        my_recipe_ingredients.map { |recipe_ingredient| recipe_ingredient.ingredient }
    end


    def allergens
        # should return all of the Ingredients in this recipe that are allergens for Users in our system.

        # allergen array to push to
        allergen_arr = []

        # for each allergy in this recipe
        Allergy.all.each { |allergy|

            # see if one of our ingredients is a match with the allergy ingredient
            self.ingredients.each { |ingredient| allergen_arr << ingredient if allergy.ingredient == ingredient } # If it's a match, push into allergen array
        }
        
        # Return allergen array
        allergen_arr.uniq!
    end

    def add_ingredients(ingredients_array)
        # should take an array of ingredient instances as an argument, & associate each of those ingredients with this recipe
        ingredients_array.each { |ingredient| RecipeIngredient.new(self, ingredient) }
    end

end