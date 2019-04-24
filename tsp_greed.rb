require_relative 'city'

class CityMap

attr_accessor :neighbors

  def initialize
    @neighbors = []
    @trip_itinerary = []
  end

  def insert(city_node)
    @neighbors << city_node
  end

  def nearest_neighbor(current_city)
      while @neighbors.length > 0
        @neighbors.delete(current_city)
        @trip_itinerary << current_city
        current_nearest = @neighbors[0]

      @neighbors.each do |neighbor|
        dist_to_current = distance(neighbor, current_city)
        dist_to_nearest = distance(current_nearest, current_city)
        if dist_to_current < dist_to_nearest
          current_nearest = neighbor
        end
      end
        current_city = current_nearest
     end
      for num in 0...@trip_itinerary.length-1 do
          puts "Starting from #{@trip_itinerary[num].name}, next closest is #{@trip_itinerary[num+1].name}"
    end
     return @trip_itinerary
   end

  def distance(city_1, city_2)
    Math.hypot(city_1.x_coord - city_2.x_coord, city_1.y_coord - city_2.y_coord)
  end
end

# TESTING TESTING TESTING
# kings_landing = City.new('Kings Landing', 350, 360)
# winterfell = City.new('Winterfell', 360, 370)
# qarth = City.new('Qarth', 24, 11)
# volantis = City.new('Volantis', 370, 380)
#
# new_map = CityMap.new
#
# new_map.insert(kings_landing)
# new_map.insert(winterfell)
# new_map.insert(qarth)
# new_map.insert(volantis)
#
# new_map.nearest_neighbor(kings_landing)
