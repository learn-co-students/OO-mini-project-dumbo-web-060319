class Recipe 
    attr_accessor :recipe_name

    @@all = []

    def initialize(recipe_name)
        @recipe_name = recipe_name

        @@all << self
    end

    def recipe_cards 
        RecipeCard.all.select { |recipe_card| recipe_card.recipe == self }
    end

    def users 
        recipe_cards.map { |recipe_card| recipe_card.user }
    end

    def recipe_ingredients 
        RecipeIngredient.all.select { |recipe_ingredient| recipe_ingredient.recipe == self }
    end

    def ingredients 
        recipe_ingredients.map { |recipe_ingredient| recipe_ingredient.ingredient }
    end

    def add_ingredients(ingredients) 
        ingredients.each { |ingredient| RecipeIngredient.new(self, ingredient) }
    end

    def allergens 
        # ingredients.select {|ingredient| User.all}
        User.all.map { |user| user.allergens }.uniq
    end


    



    def self.all 
        @@all 
    end

    def self.most_popular 
        most_popular_recipe = @@all[0]
        @@all.each do |recipe|
            if recipe.users.length > most_popular_recipe.users.length 
                most_popular_recipe = recipe 
            end
        end
        most_popular_recipe
    end




end