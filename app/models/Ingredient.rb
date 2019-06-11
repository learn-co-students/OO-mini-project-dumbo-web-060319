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
        Allergy.all.map { |allergy| allergy.ingredient }.mode
    end

end
