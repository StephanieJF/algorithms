def bucket_sort(array, bucket_size=5)
 if array.length == 0
	 return array
 end

 min_val = array.min
 max_val = array.max
 bucket_count = ((max_val - min_val)/bucket_size).floor + 1
 all_buckets = Array.new(bucket_count)

 (0...all_buckets.length).each do |i|
	 all_buckets[i] = []
 end

 (0...array.length).each do |i|
	 all_buckets[((array[i] - min_val) / bucket_size).floor].push(array[i])
 end

 array.clear
 all_buckets.each do |bucket|
	 insertion_sort(bucket)
	 bucket.each do |element|
		 array.push(element)
	 end
 end
 return array
end

def insertion_sort(array)
 (1...array.length).each do |i|
		 j = i
		 while j > 0 && array[j] < array[j-1]
			 array[j], array[j-1] = array[j-1], array[j]
			 j -= 1
		 end
 end
 array
end
