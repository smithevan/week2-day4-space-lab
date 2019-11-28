class StarSystem
  attr_reader :name, :planets

 def initialize(name, planets)
   @name = name
   @planets = planets
 end

 def planet_names(planets = @planets)
   planets.map { |planet| planet.name}
 end

 def get_planet_by_name(name_we_want)
   @planets.find { |planet| planet.name == name_we_want}
 end

 def get_largest_planet()
   planet_diameters = @planets.map { |planet| planet.diameter }
   target_planet_diameter = planet_diameters.max
   @planets.find {|planet| planet.diameter == target_planet_diameter}
 end

 def get_smallest_planet
   planet_diameters = @planets.map { |planet| planet.diameter }
   target_planet_diameter = planet_diameters.min
   @planets.find {|planet| planet.diameter == target_planet_diameter}
 end

 def get_planets_with_no_moons
   #planet_moon_data = @planets.map { |planet| planet.number_of_moons }
   @planets.find_all {|planet| planet.number_of_moons == 0}
 end

 def get_planets_with_more_moons(desired_number_of_moons)
   whole_planets_with_moons = @planets.find_all {|planet| planet.number_of_moons > desired_number_of_moons}
   planet_names(whole_planets_with_moons)
 end

 def get_number_of_planets_closer_than(distance)
   planets_close_to_sun = @planets.find_all {|planet| planet.distance_from_sun < distance}
   return planets_close_to_sun.length
 end

end
