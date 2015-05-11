# Write your answer bellow
#
# Happy coding!!

class Person
	attr_accessor :first_name, :last_name

	def initialize
		@first_name = first_name
		@last_name = last_name
		@full_name = full_name
	end

	def full_name
		puts "#{@first_name}" + " " + "#{@last_name}"
	end
end

class Player < Person
	attr_accessor :health, :strength, :alive
	
	def initialize(health=20, strength=5, alive=true)
		@health = health
		@strength = strength
		@alive = alive
	end

	# def alive
	# 		if alive = false
	# 		puts "Player Dies"
	# end


	def take_damage(attack_strength)
		@health -= attack_strength if @health > 0
		@alive = false if @health < 0
	end

	def attack(player)
		player.take_damage(@strength)
		puts "#{full_name} attacks #{player.full_name}"
	end
end

class Knight < Player
	def initialize(health=50, strength=7)
		@health = health
		@strength = strength
		super
	end
end

class Wizard < Player
	def initialize(health=20, strength=75)
		@health = health
		@strength = strength
		super
	end
end


# Player One
person1 = Person.new
person1.first_name = "Harry"
person1.last_name = "Chen"
knight_harry = Knight.new
puts "#{person1.full_name} is Player One with health of #{knight_harry.health} and strength of #{knight_harry.strength}"

# Player Two
person2 = Person.new
person2.first_name = "Fer"
person2.last_name = "Martin"
wizard_fer = Wizard.new
puts "#{person2.full_name} is Player Two with health of #{wizard_fer.health} and strength of #{wizard_fer.strength}" 

puts "Knight Harry just attacked Wizard Fer! His new health is #{knight_harry.attack(wizard_fer)}"




