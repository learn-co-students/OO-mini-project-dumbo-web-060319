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
    Allergy.all.map {|a| a.ingredient}.group_by{|n| n}.values.max_by(&:size).uniq[0]
  end

end
