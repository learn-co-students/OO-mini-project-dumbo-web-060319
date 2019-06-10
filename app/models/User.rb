class User 
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 

        @@all << self
    end

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def recipe_cards 
        RecipeCard.all.select { |recipe_card| recipe_card.user == self }
    end

    def recipes 
        recipe_cards.map { |recipe_card| recipe_card.recipe }
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergy_joiners 
        Allergy.all.select { |allergy| allergy.user == self }
    end

    def allergens 
        allergy_joiners.map { |allergy| allergy.ingredient }
    end

    def top_three_recipes 
        sorted = recipe_cards.sort_by { |recipe_card| recipe_card.rating }
        sorted.last(3).map { |recipe_card| recipe_card.recipe }
    end

    def most_recent_recipe 
        sorted = recipe_cards.sort_by { |recipe_card| recipe_card.date }
        sorted[-1].recipe
    end






    def self.all 
        @@all 
    end


end