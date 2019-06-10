class Allergy
    attr_accessor :name, :ingredient, :count
    @@all = []

    def self.all
        @@all
    end 

    def initialize(name, ingredient)
        @name = name
        @ingredient = ingredient
        @@all << self
    end 

    def count 
      @@all.select {|allergy| ingredient == allergy.ingredient}.size
    end
end