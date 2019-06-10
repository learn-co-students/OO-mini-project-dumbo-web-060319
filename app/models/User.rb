class User

	
	@@all = []

	def initialize
		@@all << self
	end


	def recipes
		RecipeCard.all.select{|card| card.user == self}
	end

	def add_recipe_card(recipe, date, rating)
		RecipeCard.new(self, recipe, date, rating)
	end

	def declare_allergy(ingredient)
		Allergy.new(self, ingredient)
	end

	def allergens
		Allergy.all.select{|allergy| allergy.user == self}
	end

	def top_three_recipes
		recipes.sort_by{|recp| recp.rating}.reverse[0..2]
	end

	def most_recent_recipe
		recipes.sort_by{|recp| recp.date}[-1]
	end

	def safe_recipes
		declare_allergy.all.select {|a| a.user != self}
	end


end