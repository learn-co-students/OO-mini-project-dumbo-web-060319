class Recipe
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        most_common = {}
        RecipeCard.all.each do |recipe_card|
            if most_common.has_key?[recipe_card.recipe]
                most_common[recipe_card.recipe] += 1
            else 
                most_common[recipe_card.recipe] = 1
            end
            most_common.values.sort
            most_common[-1]
        end
    end

    def users
        RecipeCard.all.map {|recipe_card| recipe_card.user}
    end

    def ingredients
        RecipeIngredient.all.map {|recipe_ingredient| recipe_ingredient.ingredient if recipe_ingredient.recipe == self}
    end

    def allergens
        Allergy.all.map {|allergy| allergy.ingredient if allergy.recipe == self} 
    end

    def add_ingredients(ingredient_array)
        ingredient_array.each {|ingredient| RecipeIngredient.new(self, ingredient)}
    end

end


