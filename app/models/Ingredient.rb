class Ingredient 
    @@all = []

    def self.all
        @@all
    end 

    def self.most_common_allergen
        max = 0
        max_allergy = nil
        Allergy.all.each do |allergy|
            if allergy.count > max
                max = allergy.count
                max_allergy = allergy.name
            end 
        end 
        max_allergy
    end 
end 