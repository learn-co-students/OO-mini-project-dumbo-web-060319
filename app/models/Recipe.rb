

class Recipe 

    attr_accessor :name, :users, :ingredients, :allergens

    @@all = []
    def initialize()
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.most_popular 
        all_recipes = RecipeCard.all 
        my_hash = {}


        all_recipes.each do |singular_recipe|
            actual_recipe = singular_recipe.recipe
            if my_hash.key?(actual_recipe) == true 
                my_hash[actual_recipe] += 1 
            else 
                my_hash[actual_recipe] = 1
            end
        end
        my_hash.each do |k,v|
            return k if v ==my_hash.values.max
        end
    end 

    def users 
        myArr=[]
        RecipeCard.all.each do |recipe_name|
            if recipe_name.recipe == self 
                myArr.push(recipe_name.user)
            end
        end
        return myArr
    end

    def ingredients 
        x=RecipeIngredient.all 
        x.select do |thingy|
            if thingy.recipe == self 
                thingy.ingredient
            end
        end

    end

    def allergens 
        #INSTANCE METHOD, find ingredients for current recipe 
        #Loop thru allergies, matching ingredients 
        x= RecipeIngredient.all 
        myIngredientsArray=[]
        for thingy in x do 
            if thingy.recipe == self 
                myIngredientsArray.push(thingy.ingredient.name)
            end
        end
        myFinalArray=[]
        y = Allergy.all 
        for thingy2 in y do 
            for i in myIngredientsArray
                if thingy2.ingredient.name == i    
                    myFinalArray.push(thingy2.user)
                end
            end
        end
        return myFinalArray
    end 

    def add_ingredients(arr)
        arr.each do |x|
            RecipeIngredient.new(x, self)
        end
    end 

end