require './airplane_class'
require './hangar_class'

# Let's make some airplanes

plane = Airplane.new "WB124", "Cessna", "Citation", "Warren"
plane.miles_flown = 100
plane = Airplane.new "MZ456", "Cessna", "King Air", "Mark"	# the Zuckerbird
plane.miles_flown = 200
plane = Airplane.new "WC789", "BAE", "Ampersand", "Winston"	# Churchill's autogyro
plane.miles_flown = 300
plane = Airplane.new "WB111", "Boeing", "787 Dreamliner", "Warren"
plane.miles_flown = 500

# make sure the airplanes are there
puts Airplane.catalog

puts "How many wings on an airplane?"
puts Airplane.count_wings



hangar = Hangar.new "Hangar One", "Warren", 3

hangar.add_airplane(Airplane.pick_a_plane("WB124"))
hangar.add_airplane(Airplane.pick_a_plane("WB111"))

puts hangar.list_airplanes

puts "What do you put in an airplane hangar?"
puts Hangar.what_do_i_hold?

puts "Show me Warren's hangar"
puts Hangar.pick_a_hangar("Warren")

puts "What airplanes are in Warren's hangar?"

puts Hangar.pick_a_hangar("Warren").list_airplanes

(Hangar.pick_a_hangar("Warren").list_airplanes).each do |plane|
	puts plane.tail_number
end

