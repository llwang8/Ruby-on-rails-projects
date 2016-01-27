class Vehicle

	@@total_made = 0

	def initialize
		@@total_made += 1
	end
	def self.total_made
		@@total_made
	end

	def filter(objects)
		objects.map do |obj|
			obj.color = "blue"
			obj.make = "honda"
			obj.model = "accord"
		end
	end

end


class Automobile < Vehicle

	def self.wheels
		@@wheels
	end

	def initialize (hsh)
		@wheels = 4
		@color = hsh[:color]
		@make = hsh[:make]
		@model = hsh[:model]
		@year = hsh[:year]
	end

	def display
		puts "Color: #{@color}"
		puts "Make: #{@make}"
		puts "Model: #{@model}"
		puts "Year: #{@year}"
	end

end

class Motorcycle < Vehicle

end


my_car = Automobile.new(color: "blue", make: "honda", model: "accord", year: 1984).display

