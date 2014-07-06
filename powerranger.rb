class Person
	attr_accessor :name, :caffeine_level
	attr_reader :tired

	def initialize(name, caffeine_level = 0)
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

	def initialize(name, caffeine_level = 0, strength = 0, color)
		super(name, caffeine_level)
		@strength = strength
		@color = color
	end

	def punch(person)
		@caffeine_level -= 1
		person.scream
		person.run
		if @strength > 5 
			person.caffeine_level -= 1
			puts "#{name} does a somersault"
		else 
			puts "That was a weak hit"
		end
	end

	def use_megazord(person)
		old_strength = @strength
		@strength = 5000
		self.punch(person)
		@strength = old_strength
	end


	def rest
		person.caffeine_level =- 1
		if @caffeine_level > 4
			puts "You have a caffeine level of #{@caffeine_level} you cannot rest!"
		else
			puts "You are rested"
		end
	end
end

class EvilNinja < Person 
	attr_accessor :evilness

	def initialize (name, caffeine_level, strength, evilness)
		super(name, caffeine_level)
		
	end

	def punch(person)
		@caffeine_level -= 1
		person.scream
		person.run
		if @strength > 5 
			person.caffeine_level -= 1
			puts "#{name} does a somersault"
		else 
			puts "That was a weak hit"
		end
	end

	def cause_mayhem(person)
		person.caffeine_level = 0 
		puts "The Mayham has been delivered"
		end
end

def fight_scene
	justin = Person.new("Justin", 99)
	gsp = Person.new("GSP", 50)
	jason = PowerRanger.new("Jason",100,40,"red")
	billy = PowerRanger.new("Billy",50,20,"blue")
	puddy1 = EvilNinja.new ("puddy1", 10, 10, 100)
	puddy2 = EvilNinja.new ("puddy2", 10, 10, 100)

	justin.run
	gsp.drink_coffee
	jason.punch(putty1)
	billy.punch(putty1)
	billy.rest
	billy.run
	puddy1.punch(jason)
	puddy2.cause_mayhem(gsp)

	
end








