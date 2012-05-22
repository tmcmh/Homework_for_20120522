class Hangar

	@@hangars = []

	def initialize name, owner, capacity
		@name = name
		@owner = owner
		@capacity = capacity
		@airplanes_stored = []
		@@hangars << self
	end

	def airplanes_in_hangar
		@airplanes_stored.size
	end

	def add_airplane(tail_number)
		@airplanes_stored << tail_number
	end

	def list_airplanes
		@airplanes_stored
	end

	def owner
		@owner
	end

	def self.what_do_i_hold?
		"airplanes!"
	end

	def self.pick_a_hangar(owner)
		@@hangars.find {|hangar| hangar.owner == owner}
	end	# returns whichever hangar is the first with an owner matching the argument
		# so this assumes that an owner can own a maximum of one hangar




end
