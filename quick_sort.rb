def quick_sort(arr)
	if arr.length <= 1
		return arr
	else
		pivot = arr[-1]
		less = []
		greater = []
		arr.delete_at(-1)
		arr.each do |current|
			if current <= pivot
				less.push(current)
			else
				greater.push(current)
			end
		end
		return quick_sort(less) + [pivot] + quick_sort(greater)
	end
end
