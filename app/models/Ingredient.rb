class Ingredient 

    @@all = []

    def initialize(ingredient_name)
        @ingredient_name = ingredient_name 

        @@all << self 
    end

    def allergies 
        Allergy.all.select { |allergy| allergy.ingredient == self }
    end

    def users 
        allergies.map { |allergy| allergy.user }
    end



    def self.all 
        @@all 
    end

    def self.most_common_allergen 
        most_common_allergen = @@all[0]
        @@all.each do |ingredient| 
            if ingredient.users.length > most_common_allergen.users.length 
                most_common_allergen = ingredient 
            end
        end
        most_common_allergen
    end


end
