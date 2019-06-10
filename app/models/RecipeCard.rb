class RecipeCard
  @@all=[]
  attr_accessor :recipe ,:user, :date, :rating
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
