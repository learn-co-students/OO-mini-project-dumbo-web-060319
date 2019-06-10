class User
    attr_accessor :recipe_card, :allergy
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end


    def recipes
        RecipeCard.all.select {|card| card.user == self}
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select do |allergy|
            if allergy.user == self
                    return allergy.ingredient 
            end
        end
    end

    def top_three_recipes
        recipes = self.recipes
        h = {}     
        recipes.each do |recipecard|
        h.merge!(recipecard.rating => recipecard.recipe)
        end
        new_h = h.sort.reverse
        return new_h[0..2]
    end

    def most_recent_recipe
        all_recipes = RecipeCard.all.select {|recipecard| recipecard.user = self}

     h = {}
     all_recipes.each do |recipecard|
     h.merge!(recipecard.date => recipecard.recipe)
     end
      array_of_users_recipe_dates = h.sort.last
    end

end

