
class Ingredient

    attr_accessor :name 
    @@all = []

    def initialize
        @@all << self 
    end
    def self.all
        @@all
    end 

    def self.most_common_allergen
        myHash={}

        x=Allergy.all
        for thing in x 
            if myHash.key?(thing.ingredient) == true 
                myHash[thing.ingredient] = myHash[thing.ingredient] + 1 
            else 
                myHash[thing.ingredient] = 1
            end
        end
        return myHash.select{ |k,v| v == myHash.values.max}
    end 

end 