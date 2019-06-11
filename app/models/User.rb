class User
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @all
    end

    def recipes
        RecipeCard.all.select {|recipe_card| recipe_card.recipe if recipe_card.user == self}
    end

    def add_recipe_card(recipe_instance, date, rating)
        RecipeCard.new(date, rating, self, recipe_instance)
    end

    def declare_allergy(ingredient_instance)
        Allergy.new(self, ingredient_instance)
    end

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    def top_three_recipes
        my_recipe_cards.rating.max(3)
    end

    def most_recent_recipe
        recipes[-1]
    end

    def my_recipe_cards
        RecipeCard.all.select {|recipe_card| recipe_card.user == self}
    end

end