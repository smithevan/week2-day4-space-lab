class StarSystem
  attr_reader :name, :planets

 def initialize(name, planets)
   @name = name
   @planets = planets
 end

 def planet_names
   @planets.map { |planet| planet.name}
 end

 def get_planet_by_name(name_we_want)
   @planets.find { |planet| planet.name == name_we_want}
 end

 def get_largest_planet()
   planet_diameters = @planets.map { |planet| planet.diameter }
   target_planet_diameter = planet_diameters.max
   @planets.find {|planet| planet.diameter == target_planet_diameter}
 end

end
