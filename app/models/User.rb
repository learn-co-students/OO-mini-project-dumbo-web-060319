class User
    
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        # should return all of the recipes this user has recipe cards for
        RecipeCard.all.select { |recipe_card| recipe_card.recipe if recipe_card.user == self }
    end

    def add_recipe_card(recipe, date, rating)
        # should accept a recipe instance as an argument, as well as a date and rating,
        #  and create a new recipe card for this user and the given recipe
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        # should accept anIngredient instance as an argument, 
        # and create a new Allergy instance for this User and the given Ingredient
        Allergy.new(self, ingredient)
    end

    def allergens
        # should return all of the ingredients this user is allergic to
        Allergy.all.select { |allergy| allergy.user == self }
    end

    # Helper method that finds all of the users recipe cards
    def my_recipe_cards
        RecipeCard.all.select { |recipe_card| recipe_card.user == self }
    end

    def top_three_recipes 
        # should return the top three highest rated recipes for this user.
        self.my_recipe_cards.select { |recipe_card| recipe_card.recipe if recipe_card.rating.max(3) }
    end

    def most_recent_recipes
        # should return the recipe most recently added to the user's cookbook
        recipes[-1]
    end

end