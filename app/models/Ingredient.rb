class Ingredient
	@@all = []

	def initialize
		@@all << self
	end

	def self.most_common_allergen
		Allergy.all.map {|a| a.ingredient}.group_by{|n| n}.values.max_by(&:size).uniq[0]
	end

	def self.all
		@@all
	end

end