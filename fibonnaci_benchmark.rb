require 'benchmark'
require_relative './fibonnaci_recursive.rb'
require_relative './fibonnaci_iterative.rb'

Benchmark.bmbm do |benchmark|
	  benchmark.report("fib recursive") { fib_rec(20) }
		benchmark.report("fib iterative") { fib_iter(20) }
end
