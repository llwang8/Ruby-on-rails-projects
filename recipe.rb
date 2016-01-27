#3 ways to store data in a program: 
#the ever-present Hash, 
#the cool-kid Struct, 
#and a regular Class.

#ingredients = {}
#ingredients[:avocados] = 4
#ingredients[:jalapenos] = 2
#puts ingredients[:cinnamon].nil?

#Recipe = Struct.new(:ingredients, :method)
class Recipe 
	attr_accessor :name, :ingredients, :method
	def initialize(name, ingredients, method)
		@name = name
		@ingredients = ingredients
		@method = method
	end
end
recipes = {}
recipes[:Guacamole] = Recipe.new(
	"Guacamole",
	{
	avocados: 4, 
	jalapenos: 2,
	tomato:  1,
	onion: 1/2,
	orange: 1/3,
	garlic:  "pinch",
	salt:  "pinch",
	pepper: "pinch"
	}, 
	[
	"Peel / Slice Avocados.", 
	"Chop tomato into small pieces.", 
	"Dice Onion.", 
	"Mince Jalapenos.",
	"Add all chopped ingredients to Avocados.", 
	"Squeeze lime and orange into Avocado mixture.", 
	"Add garlic Salt, Salt, Pepper to taste.", 
	"Mix all together,", 
	"Get your chips ready." 
	]
	)

def display(*arg)
	#puts arg
	arg.each do |content|
		puts "#{content.name}"
		puts "Ingredients:"
		content.ingredients.each do |key, value|
			puts "* #{key}: #{value}"
		end

		puts "\nMethod"
		content.method.each_with_index do |step, index|
			puts "#{index + 1}. #{step}"
		end
	end
end

display(recipes[:Guacamole])



