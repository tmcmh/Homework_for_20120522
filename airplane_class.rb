class Airplane

	@@airplane_fleet = []
	@@wing_count = 2

	attr_accessor :miles_flown

	def initialize tail_number, make, model, owner		
		@tail_number = tail_number
		@make = make
		@model = model
		@owner = owner
		@@airplane_fleet << self
	end

	def tail_number
		@tail_number
	end

	def model
		@model
	end

	def make
		@make
	end

	def owner
		@owner
	end

	def self.catalog	# I guess it needs 'self' to make it clear it's for the class not the instance?
		plane_catalog = []
		@@airplane_fleet.each do |plane|
			 plane_catalog << (plane.tail_number + " " + plane.make + " " + plane.model + " " + plane.owner + " " + plane.miles_flown.to_s + " miles flown.")
		end
		return plane_catalog
	end

	def self.count_wings
		@@wing_count
	end

	def self.pick_a_plane(tail_number)
		@@airplane_fleet.find {|plane| plane.tail_number == tail_number}
	end	# assumes that tail numbers are unique (which in real life is true)


end