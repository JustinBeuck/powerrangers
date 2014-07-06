class Person
	attr_accessor :name, :caffeine_level
	attr_reader :tired

	def initialize(name,caffeine_level = 0)
		@caffeine_level = caffeine_level
		@name = name
		@tired = 0
	end

	def run
		@tired += 1
		if @tired < 5
			@caffeine_level -= 1
		else
			puts "You're too tired to run."
			@tired -= 1
		end
	end

	def scream
		puts "AHHHHH!"
		
	end

	def drink_coffee
		@caffeine_level += 1
		puts "#{@name} now has a caffeine_level of #{caffeine_level}"
		
	end
end

class PowerRanger < Person 
	attr_accessor :strength, :color

	def initialize(strength, color)
		@strength = strength
		@color = color
	end

	def punch
		Person.scream 
		Person.run
		if @strength > 5 
			@caffeine_level -= 1
			puts "#{name} does a somersault"
		else 
			puts "That was a weak hit"

	end

	def rest
	end
end

class EvilNinja
end
