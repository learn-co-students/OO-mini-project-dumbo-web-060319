class RecipeIngredient

    attr_accessor :recipe, :ingredient

    @@all = []

    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient

        @@all << self
    end

    def self.all
        @@all
    end

    def safe_recipes
        # should return all recipes that do not contain ingredients the user is allergic to.
    end

end