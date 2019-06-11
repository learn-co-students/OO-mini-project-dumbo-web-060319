class Ingredient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.most_common_allergen
        most_common = {}
        Allergy.all.map do |allergy| 
            if most_common.has_key?(allergy.ingredient)
                most_common[allergy.ingredient] += 1
            else
                most_common[allergy.ingredient] = 1
            end
        end
        most_common.values.sort
        most_common.keys[-1]
    end

end




