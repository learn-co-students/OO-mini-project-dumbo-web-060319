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
        # array to hold the top three
        top_three = []
        # placeholder for first second and third place, and ratings
        first_place, second_place, third_place, first_rating, second_rating, third_rating = "", "", "", 0, 0, 0

        # Find the highest rated recipe and set that to first
        self.my_recipe_cards.each { |recipe_card|   
            first_place, first_rating = recipe_card, recipe_card.rating if recipe_card.rating > first_rating               
        }

        # Find second highest rated recipe and set that to second
        self.my_recipe_cards.each { |recipe_card|   
            second_place, second_rating = recipe_card, recipe_card.rating if recipe_card.rating > second_rating and recipe_card != first_place          
        }

        # Find thirtd highest rated recipe and set that to third
        self.my_recipe_cards.each { |recipe_card|   
            third_place, third_rating = recipe_card, recipe_card.rating if recipe_card.rating > third_rating and recipe_card != first_place and recipe_card != second_place           
        }

        top_three.push(first_place, second_place, third_place)
    end

    def most_recent_recipes
        # should return the recipe most recently added to the user's cookbook
        recipes[-1]
    end

end