class User 

	attr_reader :allergy

    @@all = []

    def initialize
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def recipes
        RecipeCard.all.select do |recipe| 
            #All the recipes the user has cards of 
        end    
    end

    def add_recipe_card(recipe, date, rating)
        recipe_card = RecipeCard.new(recipe, date, rating)
        recipe_card.user = self
    end 

    def declare_allergy(ingredient)
        allergy = Allergy.new(ingredient) #check back for arguments/ initialization
    end 

    def allergens
        Allergy.all.select do |allergy|
          allergy.user == self
        end
    end 

    def top_three_recipes
        recipe_cards = RecipeCard.all.sort_by {|recipe_card| recipe_card.rating}.reverse[0...2]
    end 

    def most_recent_recipe
        RecipeCard.all[-1]
    end

    def safe_recipes
      Allergy.all.select do |allergy|
          allergy.user != self
      end
    end

end 