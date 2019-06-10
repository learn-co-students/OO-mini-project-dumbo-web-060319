class Recipe
	
	@@all = []

	def initialize
		@@all << self
	end

	def users
		recep = RecipeCard.all.select{|card| card.recipe == self}
		recep.map{|as| as.user}
	end

	def ingredients
		list=RecipeIngredient.all.select{|recp| recp.recipe ==self}
		list.map{|recipe| recipe.ingredient}
	end

	def allergens
		Allergy.all.map {|a| ingredients.detect{|i| i == a.ingredient}}.compact
	end

	def add_ingredients(ingedients_array)
		ingedients_array.each do |ingredient|
			RecipeIngredient.new(self, ingredient)
		end
	end

	def self.most_popular
		@@all.sort_by {|recipe| recipe.users.count}[-1]
	end


	def self.all
		@@all
	end

end