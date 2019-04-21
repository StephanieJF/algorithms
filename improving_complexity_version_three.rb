def poorly_written_ruby(*arrays)
	combined_array = arrays.flatten
  heap_sort(combined_array)
	# utilize heap_sort (or another in-place sorting algorithm with better space alocation) for a
	# time-space balanced approach
end

def heap_sort(arr)
	n = arr.length-1
	a = arr

	(n/2).downto(0) do |i|
		build_heap(a, i, n)
	end

	while n>0
		a[0], a[n] = a[n], a[0]
		n -=1
		build_heap(a, 0, n)
	end
	a
end

def build_heap(arr, parent, limit)
	root = arr[parent]
	while (child = 2*parent) <= limit
		child += 1 if child < limit && arr[child] < arr[child + 1]
		break if root >= arr[child]
		arr[parent], parent = arr[child], child
	arr[parent] = root
	end
end
