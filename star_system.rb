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

end
