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
   #
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

 def get_total_number_of_moons
   planet_moon_data = @planets.map { |planet| planet.number_of_moons }
   all_moons = planet_moon_data.reduce {|total_moons, current_moon| total_moons + current_moon}
   return all_moons
 end

 # def get_planet_names_sorted_by_increasing_distance_from_sun
 #   planets_distance_data = @planets.map { |planet| planet.distance_from_sun }
 #   planets_distance_data.sort
 #   new_array = planets_distance_data.map do |distance|
 #     distance == @planets.distance_from_sun


  # end
   #return new_array
   #sorted_array = planets_distance_data.map { |planets| @planets.distance_from_sun == planets}
   #planets_sorted = planets_distance_data.find {|planet| planet == @planets.distance_from_sun}
   #return planets_sorted.name
 # end

end
