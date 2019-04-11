def binary_search_iterative(collection, value)
	low = collection[0]
	high = collection[-1]

	while low <= high
		mid = (low + high) / 2
			if collection[mid] > value
				high = collection[mid - 1]
			elsif collection[mid] < value
				low = collection[mid + 1]
			else
				return collection[mid]
			end
	end
	return "not found"
end
