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
        # most common
        mca = ""
        mca_val = 0
        
        # hash to store allergy.ingredient and count how many times it occurs
        allergic_to = {}

        Allergy.all.map { |allergy| 

           if allergic_to.has_key?(allergy.ingredient) 
            allergic_to[allergy.ingredient] += 1
           else
            allergic_to[allergy.ingredient] = 1
           end

        }

        allergic_to.each { |ingredient, count| mca, mca_val = ingredient, count if mca_val < count }

        mca
    end

end
