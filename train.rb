#assignment after 'Recipe'

class Train
	attr_accessor :engine, :car, :carboose

	def initialize (engine, car, carboose)
		@engine = engine
		@car = car
		@carboose = carboose
	end

	def display(*train)
		puts "Number of Engines: #{engine}"
		puts "Number of Cars: #{car}"
		puts "Carboose: #{@carboose}"
	end
end

passenger = Train.new(3, 11, true).display
