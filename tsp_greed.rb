# DEF nearest_possible_neighbor(current_city)
#   SET neighbor_cities TO current_city.neighbors
#   SET nearest_neighbor TO first element in neighbor_cities
#
#   FOR current_neighbor IN neighbor_cities
#     IF current_neighbor.visited IS FALSE AND current_neighbor.distance < nearest_neighbor.distance
#       ASSIGN nearest_neighbor TO current_neighbor
#     END IF
#   END FOR
#   RETURN nearest_neighbor
# END DEF

def nearest_neighbor(current_city)
	neighbor_cities = current_city.neighbors
	nearest_neighbor = neighbor_cities[0]

	for current_neighbor in neighbor_cities #iterate through neighbor cities
		if !current_neighbor.visited? && current_neighbor.distance < nearest_neighbor.distance
			nearest_neighbor = current_neighbor
    else
      current_neighbor.visited = true
		end
	end
	return nearest_neighbor
end
