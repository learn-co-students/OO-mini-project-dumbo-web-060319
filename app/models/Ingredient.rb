class Ingredient
  @@all=[]
def initialize
  @@all << self
end

  def self.all
    @@all
  end

  def self.most_common_allergen
  arr=  Allergy.all.sort_by{|allergy_ins| Allergy.all.count(allergy_ins) }
  arr[-1].ingredient
  end
end
