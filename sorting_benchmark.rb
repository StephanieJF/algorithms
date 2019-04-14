require 'benchmark'
require_relative './quick_sort.rb'
require_relative './heap_sort.rb'
require_relative './bucket_sort.rb'

array = Array.new(50) { rand(1..100) }

Benchmark.bmbm do |benchmark|
	  benchmark.report("quick sort") { quick_sort(array) }
		benchmark.report("heap sort") { heap_sort(array) }
		benchmark.report("bucket sort") { bucket_sort(array) }
end
