def poorly_written_ruby(*arrays)
	combined_array = arrays.flatten
	sorted_array = [combined_array.delete_at(-1)]

	for val in combined_array
    i = 0
    while i < sorted_array.length
    	current = sorted_array[i]
        if val <= current
          sorted_array.insert(i, val)
          break
        end
			i+=1
		end
  end
	# Return the sorted array
	sorted_array
end
